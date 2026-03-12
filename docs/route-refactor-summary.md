# Route Refactor: Feature-Owned Routes

## Why

All route data classes (`IdeasRoute`, `MealDetailsRoute`, `DrinkDetailsRoute`, `FavoritesListRoute`, `FavoriteDetailsRoute`) lived in a single `routes.dart` file in the app package. This coupled every feature's routing logic into one monolithic file, violating separation of concerns.

## What Changed

### Feature routes moved to their respective presentation packages

| Route | New Location |
|---|---|
| `IdeasRoute` | `ideas_presentation/lib/src/routes/ideas_route.dart` |
| `MealDetailsRoute` | `meals_presentation/lib/src/routes/meal_details_route.dart` |
| `DrinkDetailsRoute` | `drinks_presentation/lib/src/routes/drink_details_route.dart` |
| `FavoritesListRoute` | `favorites_presentation/lib/src/routes/favorites_list_route.dart` |
| `FavoriteDetailsRoute` | `favorites_presentation/lib/src/routes/favorite_details_route.dart` |

Each feature package now exports its routes via a dedicated barrel file (e.g. `ideas_routes.dart`, `meals_routes.dart`).

### `go_router_builder` removed

`go_router_builder` requires all annotated route classes to live in the same Dart library (for `part` file code generation). Since feature packages are separate libraries, this dependency was removed. Each route class now manually implements `location`, `go`, `push`, `pushReplacement`, and `replace` — roughly 10 lines of boilerplate per route.

### `DeferredLoader` moved to `mealify_design_system`

`DeferredLoader` previously lived in the app's `app_router/` directory. Since all presentation packages already depend on `mealify_design_system`, it was moved there so every feature can use it for deferred module loading.

### `routes.dart` is now a thin assembly file

The app's `routes.dart` no longer contains any route data classes. It only imports feature routes and assembles the `StatefulShellRoute` tree (~45 lines).

### Route path constants defined in domain packages

Each feature's domain package now exports a route paths class (`DrinkRoutePaths`, `MealRoutePaths`, `FavoriteRoutePaths`) containing path segments and location builder functions. Ideas route paths live in `ideas_presentation` since there is no `ideas_domain` package.

| Feature | Route paths location |
|---|---|
| Drinks | `drinks_domain/lib/src/drink_route_paths.dart` |
| Meals | `meals_domain/lib/src/meal_route_paths.dart` |
| Favorites | `favorites_domain/lib/src/favorite_route_paths.dart` |
| Ideas | `ideas_presentation/lib/src/routes/ideas_route_paths.dart` |

**Why domain packages?** Cross-feature navigation (e.g. the Ideas screen navigating to Drink or Meal details) requires access to route paths from other features. Three constraints shaped this decision:

1. **No cross-presentation dependencies.** Importing `drinks_presentation` from `ideas_presentation` would couple feature presentation layers, making them harder to develop and test independently.
2. **No shared routing constants file.** A centralized file would require every feature team to edit the same file, creating merge conflicts and unclear ownership.
3. **No new packages.** Creating per-feature route path packages (e.g. `drinks_route_paths`) would add 4+ packages for a handful of constants each.

Domain packages satisfy all three: each team owns their own domain package, `ideas_presentation` already depends on `drinks_domain` and `meals_domain` (for repository interfaces and models), and the route path classes are pure Dart strings with zero framework imports. Within the same feature (e.g. Favorites list navigating to Favorite details), type-safe navigation via the route class is preserved.

### Deferred loading preserved

Each route uses same-package deferred imports to load its Module on demand, maintaining the same code-splitting behavior as before.

## New dependencies added to feature packages

- `go_router` added to: `ideas_presentation`, `drinks_presentation`, `meals_presentation`, `favorites_presentation`
- `provider` added to: `ideas_presentation` (others already had it)

## Files deleted

- `apps/mealify_app/lib/app_router/routes.g.dart` (generated code no longer needed)
- `apps/mealify_app/lib/app_router/deferred_loader.dart` (moved to `mealify_design_system`)

## Dev dependencies removed from `mealify_app`

- `go_router_builder`
- `build_runner`
