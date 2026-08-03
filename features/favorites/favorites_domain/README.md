# favorites_domain

The domain layer for favorites. Pure Dart, no Flutter.

A favorite is a meal paired with a drink, so this is the one domain in the repo
that depends on two others. It is the best package to read if you want to see how
FFCA handles a feature built out of other features.

## What lives here

| Path | Contents |
| --- | --- |
| `src/models/favorite.dart` | `Favorite`, holding a real `Meal` and `Drink` |
| `src/models/favorite_summary.dart` | `FavoriteSummary`, holding a `mealId` and `drinkId` |
| `src/repositories/i_favorites_repository.dart` | `IFavoritesRepository` |
| `src/use_cases/get_favorite_query.dart` | `GetFavoriteQuery`, `FavoriteNotFoundException` |

## Two models for one thing

This is the part worth understanding. `Favorite` is what a screen wants:

```dart
class Favorite {
  final String id;
  final Meal meal;      // fully populated
  final Drink drink;    // fully populated
  final DateTime createdAt;
}
```

`FavoriteSummary` is what storage can actually hold:

```dart
class FavoriteSummary {
  final String id;
  final String mealId;   // just an id
  final String drinkId;  // just an id
  final DateTime createdAt;
}
```

The reason for the split is a dependency rule. [`favorites_data`](../favorites_data)
knows how to store a favorite, but it must not know how to fetch a meal, because
that would couple the favorites data layer to the meals data layer and make either
one impossible to migrate alone. So the repository deals only in ids:

```dart
abstract interface class IFavoritesRepository {
  Future<FavoriteSummary?> getFavoriteById(String favoriteId);
  Stream<List<String>> watchAllFavoriteIds();
  Future<void> addFavorite({required String mealId, required String drinkId});
  Future<void> removeFavorite(String favoriteId);
  Future<void> removeFavoriteByMealAndDrinkId({
    required String mealId,
    required String drinkId,
  });
  Stream<bool> watchIsFavorite({
    required String mealId,
    required String drinkId,
  });
}
```

## The query bridges the gap

`GetFavoriteQuery` turns a summary into a `Favorite` by calling three repositories
and assembling the result:

```dart
Future<Favorite> get(String favoriteId) async {
  final favoriteSummary = await _favoritesRepository.getFavoriteById(favoriteId);

  if (favoriteSummary == null) {
    throw FavoriteNotFoundException(favoriteId);
  }

  return Favorite(
    id: favoriteId,
    meal: await _mealsRepository.getMealById(favoriteSummary.mealId),
    drink: await _drinksRepository.getDrinkById(favoriteSummary.drinkId),
    createdAt: favoriteSummary.createdAt,
  );
}
```

Cross-feature reads live in the domain layer, in a use case, working against
repository *interfaces*. No data layer learns about another feature.

A use case earns its place when it combines several repositories, or when the same
work would otherwise repeat across cubits. A class that only forwards one call to
one repository should not exist.

## Who depends on this

- [`favorites_data`](../favorites_data) implements `IFavoritesRepository`
- [`favorites_presentation`](../favorites_presentation) consumes both models
- [`ideas_presentation`](../../ideas/ideas_presentation) uses
  `IFavoritesRepository` to toggle and watch favorite state

This package depends on [`meals_domain`](../../meals/meals_domain),
[`drinks_domain`](../../drinks/drinks_domain), and `meta`.

## Conventions

Queries expose `get` for a `Future` and `watch` for a `Stream`; commands expose
`execute`. None are callable classes, because a `call` method breaks "find all
usages" and jump-to-definition when every callable class shares the same method
name.

## Testing

`dart run melos test` from the repo root, or `fvm flutter test` here.
