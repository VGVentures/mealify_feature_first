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
  src/data_sources/{source}/dtos/   # DTOs for that source, parsing generated
  src/mappers/                      # DTO -> domain converters
  src/repositories/                 # Repository implementations
  {feature}_data.dart               # barrel

{feature}_presentation/lib/
  src/{screen}/bloc/                # Cubit + state
  src/{screen}/views/               # Screen and widgets
  src/{screen}/{screen}_module.dart # Module wiring the screen's dependencies
  {screen}.dart                     # subfeature barrel, only when the package
                                    # has more than one screen (see below)
  {feature}_presentation.dart       # primary barrel
```

Drift generates its DTOs into `{database}.g.dart` beside the database, not into
a `dtos/` folder.

## Build & Test Commands

Repo-wide commands run through Melos, configured under the `melos:` key in the
root `pubspec.yaml`. Melos is a dev dependency, so reach it with `dart run`:

- `dart run melos generate` — Regenerate every checked-in generated file
- `dart run melos test` — Run the tests of every package that has any
- `dart run melos analyze` — Run `dart analyze --fatal-infos` on all packages
- `dart run melos format` — Format all packages
- `dart run melos format --set-exit-if-changed` — Check formatting without modifying files
- `dart run melos clean` — Clear pub and IDE temp files in all packages

Generated code is committed, and CI fails a PR whose committed copy does not
match what `dart run melos generate` produces. Change an `.arb` file, a `.drift`
schema, a route, or a DTO, and rerun that command before pushing.

Melos reads the package list from the `workspace:` key in the root `pubspec.yaml`.
A new package needs adding there and nowhere else. Do not add a `melos.yaml`, and
do not list packages under the `melos:` key.

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
- Queries expose `get` (Future) or `watch` (Stream). A command, when one is needed, exposes `execute`; this app has only queries so far. Never callable classes — they break code navigation
- Single barrel export: `lib/{feature}_domain.dart`
- Dependencies: only other domain packages and `meta`

### Data Layer (`{feature}_data`)

- Implements domain repository interfaces
- Contains: concrete repositories, data sources (local DB via Drift, remote API), mappers
- Repositories in `src/repositories/`, data sources in `src/data_sources/{source}/`, DTOs in that source's `dtos/`, converters in `src/mappers/`
- **Converter pattern**: `DbToDomain{Entity}Converter` and `ApiToDomain{Entity}Converter` extend `Converter<Input, Output>` from `dart:convert`
- Repositories accept data sources and converters via constructor injection
- **DTO pattern**: API DTOs are `@JsonSerializable(createToJson: false)` with the field list written by hand and `fromJson` generated. Name each field after the wire key; when the key is not a legal Dart name (`strIBA`, `strInstructionsZH-HANS`), give the field a Dart name and pin the key with `@JsonKey(name: ...)`. Test a DTO field-by-field against its wire key — a generated parser fails silently otherwise
- Mappers are internal. The barrel exports the repository and data sources, never the converters. DTOs stay unexported too, so a consumer cannot bind to the api's wire shape
- Single barrel export: `lib/{feature}_data.dart`
- **Pure Dart, no Flutter.** The platform `QueryExecutor` is injected by the app from `query_executor_factory`, so nothing here needs the Flutter SDK. Tests use `package:test`, not `flutter_test`
- Dependencies: own domain layer + infrastructure libs (drift, http, json_annotation, etc.)

### Presentation Layer (`{feature}_presentation`)

- Contains: modules, screens, cubits, states, widgets, callback typedefs
- Each screen owns a folder: `bloc/` for its cubit and state, `views/` for its screen and widgets, and `{screen}_module.dart` at the folder root
- **Module pattern**: A `{Feature}{Screen}Module` StatelessWidget wires dependencies using `Provider` and `BlocProvider`, then renders the screen
- **Cubit pattern**: One `{Feature}{Screen}Cubit` per screen, extends `Cubit<{State}>`
- **State pattern**: Use `sealed class` with `Loading`, `Success`, and `Error` implementations
- **Screen pattern**: `StatefulWidget` that calls cubit methods in `initState` and uses `switch` on sealed state in `build`
- Navigation callbacks are typedefs passed down from the module (e.g. `typedef OnFavoriteTapped = void Function(String favoriteId)`)
- **Subfeature barrels**: a package with more than one independently-loadable screen gives each one its own barrel at `lib/{screen}.dart`, and the primary `lib/{feature}_presentation.dart` re-exports those barrels and nothing else. Without them, a deferred import is all-or-nothing per package. A single-screen package (`drinks_presentation`, `ideas_presentation`) needs none: its primary barrel is already the only entry point. Add one when a second screen arrives, so the app does not have to change how it loads the first
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

The `{Screen}` half decides singular or plural, and the whole screen folder
agrees with it: `favorites_list` is plural down to `FavoritesListCubit` because
it shows many, and `favorite_details` is singular down to `FavoriteDetailsCubit`
because it shows one, matching `DrinkDetailsCubit` and `MealDetailsCubit`. A
folder whose cubit disagrees with its module is the drift to fix, not a variant
to copy.

### pubspec.yaml

- All packages use `publish_to: none` and `resolution: workspace`
- **Version constraints**: Read `.fvmrc` for the project's Flutter version. Match SDK and Flutter constraints from the root `pubspec.yaml` and existing packages — do NOT hardcode versions
- Dev dependencies always include `very_good_analysis` and `mocktail`

### Testing

- Use `mocktail` for mocking (not mockito)
- Mock classes: `class Mock{Dependency} extends Mock implements {Dependency} {}`
- A test file sits at the path its subject sits at, with `lib/` swapped for `test/`. A module at `lib/src/ideas/ideas_module.dart` is tested at `test/src/ideas/ideas_module_test.dart`, not under `test/src/ideas/views/`
- Coverage is uneven today: several packages have no `test/` directory at all. Mirror the path when you add one; do not take an existing gap as the convention
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

- Drift for the database layer (`.drift` files + `@DriftDatabase`)
- GoRouter for routes (`routes.dart` → `routes.g.dart`)
- `json_serializable` for api DTO parsing (`api_meal.dart` → `api_meal.g.dart`)
- `gen-l10n` for localizations, into `lib/src/l10n/gen/` so the barrel stays the
  package's only public surface
- Run: `dart run melos generate`. It orders the packages, which matters because
  the app's route builder reads the data packages' Drift output; running
  `build_runner` in parallel across the workspace fails on the missing asset
- Output is committed and gated in CI, so a stale generated file fails the build
  rather than silently serving old code
