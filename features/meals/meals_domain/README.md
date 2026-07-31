# meals_domain

The domain layer for meals. Pure Dart, no Flutter.

This package defines what a meal *is* and what can be asked about one. It does not
know where meals come from. [`meals_data`](../meals_data) answers that.

## What lives here

| Path | Contents |
| --- | --- |
| `src/models/meal.dart` | `Meal`, an immutable model with value equality |
| `src/repositories/i_meals_repository.dart` | `IMealsRepository`, the read contract |

```dart
abstract interface class IMealsRepository {
  Future<Meal> getMealById(String id);
  Future<Meal> getRandomMeal();
}
```

`Meal` carries the fields TheMealDB returns, including 20 flat
`ingredient1..20` and `measure1..20` pairs. Turning those into a usable list is
not this package's job. [`ingredients_domain`](../../ingredients/ingredients_domain)
does it with an extension, which lets `Meal` stay a faithful model of the source
data instead of a convenient one.

## Who depends on this

- [`meals_data`](../meals_data) implements `IMealsRepository`
- [`meals_presentation`](../meals_presentation) consumes it
- [`favorites_domain`](../../favorites/favorites_domain) uses `IMealsRepository`
  to hydrate a `Favorite`
- [`ideas_presentation`](../../ideas/ideas_presentation) and
  [`ingredients_domain`](../../ingredients/ingredients_domain) use `Meal`

This package depends on `meta` and nothing else.

## Conventions

The model is `Meal`, not `MealModel` or `MealEntity`. Equality, `hashCode`, and
`toString` are hand-written rather than generated, so there is no build step
between cloning the repo and reading the code.

## Testing

`make test` from the repo root, or `fvm flutter test` here.
