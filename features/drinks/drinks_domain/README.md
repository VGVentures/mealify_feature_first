# drinks_domain

The domain layer for drinks. Pure Dart, no Flutter.

Defines what a drink *is* and what can be asked about one, with no knowledge of
where drinks come from. [`drinks_data`](../drinks_data) answers that.

## What lives here

| Path | Contents |
| --- | --- |
| `src/models/drink.dart` | `Drink`, an immutable model with value equality |
| `src/repositories/i_drinks_repository.dart` | `IDrinksRepository`, the read contract |

```dart
abstract interface class IDrinksRepository {
  Future<Drink> getDrinkById(String id);
  Future<Drink> getRandomDrink();
}
```

`Drink` mirrors what TheCocktailDB returns, including 15 flat `ingredient1..15`
and `measure1..15` pairs. [`ingredients_domain`](../../ingredients/ingredients_domain)
turns those into a list, so this model can stay faithful to the source rather
than convenient.

Note the deliberate symmetry with [`meals_domain`](../../meals/meals_domain):
two separate features with near-identical shapes, not one generalized
"consumable" feature. They come from different APIs and can change
independently, and sharing a model would couple them for no gain.

## Who depends on this

- [`drinks_data`](../drinks_data) implements `IDrinksRepository`
- [`drinks_presentation`](../drinks_presentation) consumes it
- [`favorites_domain`](../../favorites/favorites_domain) uses `IDrinksRepository`
  to hydrate a `Favorite`
- [`ideas_presentation`](../../ideas/ideas_presentation) and
  [`ingredients_domain`](../../ingredients/ingredients_domain) use `Drink`

This package depends on `meta` and nothing else.

## Testing

`dart run melos test` from the repo root, or `fvm flutter test` here.
