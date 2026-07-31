# ingredients_domain

A **domain-only** feature. No data layer, no presentation layer, no storage.

TheMealDB and TheCocktailDB both return ingredients as flat numbered columns:
`ingredient1` through `ingredient20` alongside `measure1` through `measure20`,
mostly null. This package turns that into a list, and that is all it does.

It exists as its own package to answer a question that comes up in every FFCA
codebase: where does logic go when it belongs to no single feature but is not
generic enough for `shared/`? Both meals and drinks need this conversion; neither
owns it; and it is specific to this app's data, so `shared/` is the wrong home.
A domain-only feature is the answer.

## What lives here

| Path | Contents |
| --- | --- |
| `src/models/ingredient.dart` | `Ingredient`, `IngredientName`, `IngredientMeasurement` |
| `src/extensions/meal_ingredients.dart` | `MealIngredients` extension on `Meal` |
| `src/extensions/drink_ingredients.dart` | `DrinkIngredients` extension on `Drink` |

`Ingredient` is a record typedef rather than a class, because it is a pair of
strings with no behavior and no identity:

```dart
typedef IngredientName = String;
typedef IngredientMeasurement = String?;
typedef Ingredient = ({IngredientName name, IngredientMeasurement measurement});
```

The extensions read the numbered fields, drop the ones that are null or blank, and
return what is left:

```dart
final ingredients = meal.ingredients; // List<Ingredient>
```

## The extensions/ folder

FFCA names `models/`, `repositories/`, and `use_cases/` as the domain layer's
subfolders. Extensions that derive one model from another are none of those, so
this repo adds `extensions/` rather than filing them somewhere misleading.

## Who depends on this

- [`meals_presentation`](../../meals/meals_presentation) and
  [`drinks_presentation`](../../drinks/drinks_presentation) call the extensions,
  then map the result into the design system's `DetailsRow`

Nothing in `shared/` depends on this. The design system used to, which broke the
rule that shared code knows nothing about features; it now declares its own
`DetailsRow` type and the screens map into it.

This package depends on [`meals_domain`](../../meals/meals_domain) and
[`drinks_domain`](../../drinks/drinks_domain).

## Testing

`make test` from the repo root, or `fvm flutter test` here. The tests cover both
extensions, including the filtering of null and empty entries.
