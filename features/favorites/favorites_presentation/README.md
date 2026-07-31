# favorites_presentation

The presentation layer for favorites. Two screens: a list and a details view.

This is the package to read for two FFCA patterns a single-screen feature does not
show: subfeature barrels for per-screen code splitting, and a widget that owns its
own cubit.

## What lives here

```
lib/
  favorites_list.dart                subfeature barrel: the list screen
  favorite_details.dart              subfeature barrel: the details screen
  favorites_presentation.dart        primary barrel, re-exports both
  src/favorites_list/
    favorites_list_module.dart        entry point
    bloc/                             FavoritesListCubit + sealed state
    views/favorites_list_screen.dart  FavoritesListScreen
    views/on_favorite_tapped.dart     OnFavoriteTapped typedef
  src/favorite_details/
    favorite_details_module.dart      entry point
    bloc/                             FavoritesDetailsCubit + sealed state
    views/favorite_details_screen.dart
  src/favorites_list_item/
    bloc/                             FavoritesListItemCubit + sealed state
    views/favorites_list_item.dart    FavoriteListItem
```

## One barrel per screen

Each screen has its own barrel, so the app can defer-load one without the other:

```dart
import 'package:favorites_presentation/favorites_list.dart'
    deferred as favorites_list;
import 'package:favorites_presentation/favorite_details.dart'
    deferred as favorite_details;
```

Opening the list downloads the list screen only. With one barrel per package,
deferred loading would be all-or-nothing. `favorites_presentation.dart` re-exports
both for consumers that want everything.

## A widget with its own cubit

`FavoriteListItem` has a `FavoritesListItemCubit` of its own, because each row
resolves its own meal and drink and can still be loading while its siblings are
done.

It is not a separate feature. It has no models and no storage, so per FFCA it
belongs to the feature that owns the screen it appears on. It is used only by
`FavoritesListScreen` and is not exported; a widget other features needed would go
through the barrel instead.

## Navigation is injected

The list screen does not know what tapping a row means. It calls a typedef the app
supplies:

```dart
typedef OnFavoriteTapped = void Function(String favoriteId);
```

The app passes a closure that navigates to the details route. That is what keeps
the feature independent of the app's routing table and of every other feature's
routes.

## Dependencies

The modules take `IFavoritesRepository`, `IMealsRepository`, and
`IDrinksRepository` as constructor arguments, and the details module builds a
`GetFavoriteQuery` from them. So this package depends on
[`favorites_domain`](../favorites_domain),
[`meals_domain`](../../meals/meals_domain), and
[`drinks_domain`](../../drinks/drinks_domain): three domain packages and no data
package.

Uses `skeletonizer` for loading placeholders.

## Testing

`make test` from the repo root, or `fvm flutter test` here.
