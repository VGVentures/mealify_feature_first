# Mealify - Architecture Guide

## Project Structure

This is a Flutter monorepo using Dart workspaces with a **feature-first architecture**. Each feature is a vertical slice with up to three layers.

```
apps/              # Flutter application(s)
features/          # Feature modules (vertical slices)
  {feature}/
    {feature}_domain/        # Models, repository interfaces, use cases (pure Dart)
    {feature}_data/          # Repository implementations, data sources, mappers
    {feature}_presentation/  # UI, Cubits, states, modules
shared/            # Cross-feature utilities (design system, localizations, etc.)
```

Not all features require all three layers. A feature may be domain-only (e.g. reference data), presentation-only (e.g. composing other features), or any combination.

Layer folder layout follows the Feature-First Clean Architecture conventions,
nested inside `lib/src/` so the barrel file stays the package's public surface:

```
{feature}_domain/lib/
  src/models/           # Domain models
  src/repositories/     # Repository interfaces (abstract interface class)
  src/use_cases/        # Query and Command classes
  src/extensions/       # Extensions deriving one model from another
  {feature}_domain.dart # barrel

{feature}_data/lib/
  src/data_sources/{source}/        # A data source
  src/data_sources/{source}/dtos/   # Hand-written DTOs for that source
  src/mappers/                      # DTO -> domain converters
  src/repositories/                 # Repository implementations
  {feature}_data.dart               # barrel

{feature}_presentation/lib/
  src/{screen}/bloc/                # Cubit + state
  src/{screen}/views/               # Screen and widgets
  src/{screen}/{screen}_module.dart # Module wiring the screen's dependencies
  {screen}.dart                     # subfeature barrel (one per entry point)
  {feature}_presentation.dart       # primary barrel, re-exports subfeatures
```

Drift generates its DTOs into `{database}.g.dart` beside the database, not into
a `dtos/` folder.

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
- Contains: models, repository interfaces (`I{Feature}Repository`), use cases, and exceptions
- Models live in `src/models/`, interfaces in `src/repositories/`, queries and commands in `src/use_cases/`
- Models are `@immutable` with manual `==`, `hashCode`, and `toString`
- Do NOT suffix models with `Model` or `Entity` — the model is the domain
- A model stored with ids rather than populated objects is a `{Entity}Summary` (e.g. `FavoriteSummary` holds `mealId` and `drinkId`)
- Repository interfaces use `abstract interface class`
- Query objects compose multiple repositories to fulfill complex reads (e.g. `GetFavoriteQuery`)
- Queries expose `get` (Future) or `watch` (Stream); commands expose `execute`. Never callable classes — they break code navigation
- Single barrel export: `lib/{feature}_domain.dart`
- Dependencies: only other domain packages and `meta`

### Data Layer (`{feature}_data`)

- Implements domain repository interfaces
- Contains: concrete repositories, data sources (local DB via Drift, remote API), mappers
- Repositories in `src/repositories/`, data sources in `src/data_sources/{source}/`, hand-written DTOs in that source's `dtos/`, converters in `src/mappers/`
- **Converter pattern**: `DbToDomain{Entity}Converter` and `ApiToDomain{Entity}Converter` extend `Converter<Input, Output>` from `dart:convert`
- Repositories accept data sources and converters via constructor injection
- Mappers are internal. The barrel exports the repository and data sources, never the converters
- Single barrel export: `lib/{feature}_data.dart`
- Dependencies: own domain layer + infrastructure libs (drift, http, etc.)

### Presentation Layer (`{feature}_presentation`)

- Contains: modules, screens, cubits, states, widgets, callback typedefs
- Each screen owns a folder: `bloc/` for its cubit and state, `views/` for its screen and widgets, and `{screen}_module.dart` at the folder root
- **Module pattern**: A `{Feature}{Screen}Module` StatelessWidget wires dependencies using `Provider` and `BlocProvider`, then renders the screen
- **Cubit pattern**: One `{Feature}{Screen}Cubit` per screen, extends `Cubit<{State}>`
- **State pattern**: Use `sealed class` with `Loading`, `Success`, and `Error` implementations
- **Screen pattern**: `StatefulWidget` that calls cubit methods in `initState` and uses `switch` on sealed state in `build`
- Navigation callbacks are typedefs passed down from the module (e.g. `typedef OnFavoriteTapped = void Function(String favoriteId)`)
- **Subfeature barrels**: every independently-loadable entry point gets its own barrel at `lib/{screen}.dart`, and the primary `lib/{feature}_presentation.dart` re-exports them. A single barrel would make deferred loading all-or-nothing per package
- Dependencies: own domain layer, design system, localizations, `flutter_bloc`, `provider`

### Dependency Direction

```
presentation → domain ← data
```

Presentation and Data both depend on Domain. Presentation NEVER imports Data directly for repository implementations — it receives repository interfaces via constructor injection from the Module.

A feature domain may depend on another feature's domain (e.g. `favorites_domain` depends on `meals_domain` and `drinks_domain`). Packages under `shared/` may not depend on anything in `features/` — shared code has zero knowledge of the app's features. If a shared widget needs a feature's type, give it a type of its own and let the caller map into it, as `DetailsView` does with `DetailsRow`.

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
- Summary models: `{Entity}Summary` (e.g. `FavoriteSummary`)

### pubspec.yaml

- All packages use `publish_to: none` and `resolution: workspace`
- **Version constraints**: Read `.fvmrc` for the project's Flutter version. Match SDK and Flutter constraints from the root `pubspec.yaml` and existing packages — do NOT hardcode versions
- Dev dependencies always include `very_good_analysis` and `mocktail`

### Testing

- Use `mocktail` for mocking (not mockito)
- Mock classes: `class Mock{Dependency} extends Mock implements {Dependency} {}`
- Test file structure mirrors the `lib/` structure it covers, including the `models/`, `repositories/`, `use_cases/`, `mappers/`, and `views/` subfolders
- Test all layers independently
- Widget tests that render `Image.network` must stub it. `NetworkImage` holds one static `HttpClient`, so `HttpOverrides` cannot reach it — set `debugNetworkImageHttpClientProvider` instead (see `shared/mealify_design_system/test/helpers/mock_network_images.dart`)

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
