# Mealify - Architecture Guide

## Project Structure

This is a Flutter monorepo using Dart workspaces with a **feature-first RIBs architecture**. Each feature is a vertical slice with up to three layers.

```
apps/              # Flutter application(s)
features/          # Feature packages (vertical slices)
  {feature}/
    {feature}_domain/        # Entities, interfaces, queries (pure Dart)
    {feature}_data/          # Repository implementations, data sources, converters
    {feature_scope}/         # RIB: Builder, Component, Interactor, Listener, View
shared/            # Cross-feature utilities (design system, localizations, etc.)
```

Not all features require all three layers. A feature may be domain-only (e.g. reference data), RIB-only (e.g. composing other features), or any combination.

## Build & Test Commands

- `make test` — Run all tests across every package
- `make analyze` — Run `dart analyze --fatal-infos` on all packages
- `make format` — Format all packages
- `make check_formatting` — Check formatting without modifying files
- `make clean` — Clean all packages

To run tests for a single package: `cd features/{feature}/{package_name} && flutter test`

## Architecture Rules

### Domain Layer (`{feature}_domain`)

- **Pure Dart only** — no Flutter dependency
- Contains: entity classes, repository interfaces (`I{Feature}Repository`), query objects, and exceptions
- Entities are `@immutable` with manual `==`, `hashCode`, and `toString`
- Repository interfaces use `abstract interface class`
- Query objects compose multiple repositories to fulfill complex reads (e.g. `GetFavoriteQuery`)
- Single barrel export: `lib/{feature}_domain.dart`
- Dependencies: only other domain packages and `meta`

### Data Layer (`{feature}_data`)

- Implements domain repository interfaces
- Contains: concrete repositories, data sources (local DB via Drift, remote API), converters
- **Converter pattern**: `DbToDomain{Entity}Converter` and `ApiToDomain{Entity}Converter` extend `Converter<Input, Output>` from `dart:convert`
- Repositories accept data sources and converters via constructor injection
- Single barrel export: `lib/{feature}_data.dart`
- Dependencies: own domain layer + infrastructure libs (drift, http, etc.)

### Presentation Layer (RIBs)

Each presentation package is a self-contained **RIB** (Builder/Component/Interactor/Listener/View):

- **Builder** (`StatelessWidget`) — Wires dependencies from Component, creates Interactor via `BlocProvider`, renders View. Replaces the old Module pattern.
- **Component** (`abstract interface class` or concrete `class`) — Declares what dependencies a RIB needs from its parent. Dependencies flow **down**. Defined by the child, implemented by the parent.
- **Interactor** (extends `Cubit<State>`) — Business logic and state management. Same as the old Cubit pattern with RIBs vocabulary.
- **Listener** (concrete `class` with `required` callback fields) — Declares what events a RIB can emit upward ("user tapped X"). Events flow **up**. Constructed by the app layer (routes) with navigation lambdas. Leaf RIBs without upward events have no Listener.
- **View** (`StatefulWidget`) — Renders UI by switching on sealed state, calls Interactor methods. Replaces the old Screen pattern.
- **State** (`sealed class`) — `Loading`, `Success`, and `Error` implementations (unchanged).

#### Component Interface Pattern (Dependencies Down)

Each child RIB defines a Component interface declaring what dependencies it needs. The parent's Component class implements the child's interface:

```dart
// Child defines what it needs
abstract interface class FavoritesListItemComponent {
  IFavoritesRepository get favoritesRepository;
  GetFavoriteQuery get getFavoriteQuery;
}

// Parent implements the child's interface
class FavoritesListComponent implements FavoritesListItemComponent { ... }
```

#### Listener Pattern (Events Up)

Each RIB that communicates events upward defines a Listener as a concrete class:

```dart
class IdeasListener {
  const IdeasListener({
    required this.onMealTapped,
    required this.onDrinkTapped,
  });

  final void Function(Meal meal) onMealTapped;
  final void Function(Drink drink) onDrinkTapped;
}
```

Features are **navigation-unaware** — they emit events via Listener callbacks and the app layer decides what navigation to perform.

#### AppComponent at the Root

A single `AppComponent` class provided via `Provider<AppComponent>` implements all child Component interfaces, providing compile-time safety from root to leaf.

#### File Layout Per RIB Package

```
{package_name}/
  lib/
    src/
      interactor/
        {name}_interactor.dart
        {name}_state.dart
      view/
        {name}_builder.dart
        {name}_view.dart
      {name}_component.dart
      {name}_listener.dart          # only if the RIB emits events upward
    {name}_component.dart           # separate export: Component only (loaded eagerly)
    {name}.dart                     # full barrel export (loaded deferred by routes)
  test/
    src/
      interactor/
        {name}_interactor_test.dart
      view/
        {name}_builder_test.dart
        {name}_view_test.dart
  pubspec.yaml
```

Every feature package has two exports:
- `{name}_component.dart` — just the Component interface, imported eagerly by `AppComponent`
- `{name}.dart` — full barrel (Builder, View, Interactor, State, etc.), imported deferred by routes

### Dependency Direction

```
RIB (presentation) → domain ← data
```

Presentation and Data both depend on Domain. Presentation NEVER imports Data directly — it receives repository interfaces via Component from the app layer.

## Conventions

### Naming

- Presentation package names: feature scope (e.g. `drink_details`, `favorites_list`, `ideas`)
- Domain package names: `{feature}_domain` (e.g. `favorites_domain`, `meals_domain`)
- Data package names: `{feature}_data` (e.g. `favorites_data`, `meals_data`)
- Repository interfaces: `I{Feature}Repository` (e.g. `IFavoritesRepository`)
- Repository implementations: `{Feature}Repository` (e.g. `FavoritesRepository`)
- Builders: `{Feature}{Scope}Builder` (e.g. `FavoritesListBuilder`)
- Components: `{Feature}{Scope}Component` (e.g. `FavoritesListComponent`)
- Interactors: `{Feature}{Scope}Interactor` (e.g. `FavoritesListInteractor`)
- Listeners: `{Feature}{Scope}Listener` (e.g. `FavoritesListItemListener`)
- Views: `{Feature}{Scope}View` (e.g. `FavoritesListView`)
- States: `{Feature}{Scope}State` sealed class (e.g. `FavoritesListState`)
- Converters: `{Source}ToDomain{Entity}Converter` (e.g. `DbToDomainFavoriteConverter`)
- Queries: `Get{Entity}Query` (e.g. `GetFavoriteQuery`)

### pubspec.yaml

- All packages use `publish_to: none` and `resolution: workspace`
- **Version constraints**: Read `.fvmrc` for the project's Flutter version. Match SDK and Flutter constraints from the root `pubspec.yaml` and existing packages — do NOT hardcode versions
- Dev dependencies always include `very_good_analysis` and `mocktail`

### Testing

- Use `mocktail` for mocking (not mockito)
- Mock classes: `class Mock{Dependency} extends Mock implements {Dependency} {}`
- Test file structure mirrors `lib/src/` structure
- Test all layers independently

### Routing (App Layer)

- Use `go_router` with `@TypedGoRoute` / `@TypedStatefulShellRoute` code generation
- Routes use deferred imports for code splitting: `import '...' deferred as feature_name`
- `DeferredLoader` widget wraps deferred Builder instantiation
- Routes read `AppComponent` from Provider tree and pass it as the child's Component
- Routes construct Listeners with navigation lambdas (e.g. `onMealTapped: (meal) => MealDetailsRoute(id: meal.id).go(context)`)

### State Management

- `flutter_bloc` with Cubits (called Interactors in RIBs vocabulary) for most use cases
- Streams managed with `StreamSubscription` and cancelled in `close()`
- Provider for non-BLoC dependencies (Components, Listeners)

### Code Generation

- Drift for database layer (`.drift` files + `@DriftDatabase`)
- GoRouter for routes (`routes.dart` → `routes.g.dart`)
- Run: `dart run build_runner build --delete-conflicting-outputs`
