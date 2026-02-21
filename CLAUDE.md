# Mealify - Architecture Guide

## Project Structure

This is a Flutter monorepo using Dart workspaces with a **feature-first architecture**. Each feature is a vertical slice with up to three layers.

```
apps/              # Flutter application(s)
features/          # Feature modules (vertical slices)
  {feature}/
    {feature}_domain/        # Entities, interfaces, queries (pure Dart)
    {feature}_data/          # Repository implementations, data sources, converters
    {feature}_presentation/  # UI, Cubits, states, modules
shared/            # Cross-feature utilities (design system, localizations, etc.)
```

Not all features require all three layers. A feature may be domain-only (e.g. reference data), presentation-only (e.g. composing other features), or any combination.

## Build & Test Commands

- `make test` — Run all tests across every package
- `make analyze` — Run `dart analyze --fatal-infos` on all packages
- `make format` — Format all packages
- `make check_formatting` — Check formatting without modifying files
- `make clean` — Clean all packages

To run tests for a single package: `cd features/{feature}/{feature}_{layer} && flutter test`

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

### Presentation Layer (`{feature}_presentation`)

- Contains: modules, screens, cubits, states, widgets, callback typedefs
- **Module pattern**: A `{Feature}{Screen}Module` StatelessWidget wires dependencies using `Provider` and `BlocProvider`, then renders the screen
- **Cubit pattern**: One `{Feature}{Screen}Cubit` per screen, extends `Cubit<{State}>`
- **State pattern**: Use `sealed class` with `Loading`, `Success`, and `Error` implementations
- **Screen pattern**: `StatefulWidget` that calls cubit methods in `initState` and uses `switch` on sealed state in `build`
- Navigation callbacks are typedefs passed down from the module (e.g. `typedef OnFavoriteTapped = void Function(String favoriteId)`)
- Multiple barrel exports allowed per feature section: `lib/{section}.dart`
- Dependencies: own domain layer, design system, localizations, `flutter_bloc`, `provider`

### Dependency Direction

```
presentation → domain ← data
```

Presentation and Data both depend on Domain. Presentation NEVER imports Data directly for repository implementations — it receives repository interfaces via constructor injection from the Module.

## Conventions

### Naming

- Package names: `{feature}_{layer}` (e.g. `favorites_domain`, `meals_data`)
- Repository interfaces: `I{Feature}Repository` (e.g. `IFavoritesRepository`)
- Repository implementations: `{Feature}Repository` (e.g. `FavoritesRepository`)
- Cubits: `{Feature}{Screen}Cubit` (e.g. `FavoritesListCubit`)
- States: `{Feature}{Screen}State` sealed class (e.g. `FavoritesListState`)
- Modules: `{Feature}{Screen}Module` (e.g. `FavoritesListModule`)
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
- `DeferredLoader` widget wraps deferred module instantiation
- Routes pass repositories from `context.read()` into modules

### State Management

- `flutter_bloc` with Cubits (not full Blocs) for most use cases
- Streams managed with `StreamSubscription` and cancelled in `close()`
- Provider for non-BLoC dependencies (repositories, queries)

### Code Generation

- Drift for database layer (`.drift` files + `@DriftDatabase`)
- GoRouter for routes (`routes.dart` → `routes.g.dart`)
- Run: `dart run build_runner build --delete-conflicting-outputs`
