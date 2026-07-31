# favorites_data

The data layer for favorites. Implements `IFavoritesRepository` from
[`favorites_domain`](../favorites_domain).

One data source, a local Drift database. Favorites are the user's own data, so
there is no API behind this and nothing to sync.

## What lives here

| Path | Contents |
| --- | --- |
| `src/data_sources/favorites_database/` | `FavoritesDatabase`, `favorites.drift`, generated Drift code |
| `src/mappers/db_to_domain_favorite_converter.dart` | `DbToDomainFavoriteConverter` |
| `src/repositories/favorites_repository.dart` | `FavoritesRepository` |

## What this package deliberately cannot do

It cannot fetch a meal or a drink. It stores and returns `FavoriteSummary`, which
holds a `mealId` and a `drinkId`:

```dart
@override
Future<FavoriteSummary?> getFavoriteById(String favoriteId) async {
  final dbFavorite = await _favoritesDb.getFavorite(favoriteId);

  if (dbFavorite == null) return null;

  return _dbToDomainFavoriteConverter.convert(dbFavorite);
}
```

Turning those ids into a full `Favorite` happens in `GetFavoriteQuery`, in the
domain layer, which calls the meals and drinks repositories. The point is that
this package has no dependency on `meals_data` or `drinks_data`, so favorites
storage can be migrated without touching either, and the reverse holds too.

Several repository methods take a meal and drink id pair rather than a favorite
id, because the ideas screen knows the pairing it is showing but not whether a
favorite row exists for it yet:

```dart
Stream<bool> watchIsFavorite({required String mealId, required String drinkId});
Future<void> removeFavoriteByMealAndDrinkId({
  required String mealId,
  required String drinkId,
});
```

## Public API

The barrel exports `FavoritesDatabase` and `FavoritesRepository`. The converter
stays internal.

## Who depends on this

Only [`mealify_app`](../../../apps/mealify_app), which constructs
`FavoritesRepository` and provides it as an `IFavoritesRepository`.
[`favorites_presentation`](../favorites_presentation) does not depend on this
package.

## Testing

`make test` from the repo root, or `fvm flutter test` here. The database tests run
against `NativeDatabase.memory()`, so they need no files and no network.
