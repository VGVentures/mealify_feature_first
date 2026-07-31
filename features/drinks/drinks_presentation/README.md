# drinks_presentation

The presentation layer for drinks. One screen: drink details.

Depends on [`drinks_domain`](../drinks_domain) for its types and on the app to hand
it an `IDrinksRepository`. It has no dependency on
[`drinks_data`](../drinks_data), so it can be tested without a database or a
network.

## What lives here

```
lib/
  drinks_presentation.dart            primary barrel
  src/drink_details/
    drink_details_module.dart         entry point
    bloc/drink_details_cubit.dart     DrinkDetailsCubit
    bloc/drink_details_state.dart     DrinkDetailsLoading / Success / Error
    views/drink_details_screen.dart   DrinkDetailsScreen
```

## The module is the entry point

`DrinkDetailsModule` names its dependencies in its constructor, provides the cubit,
and renders the screen:

```dart
DrinkDetailsModule(
  drinksRepository: context.read(),
  drinkId: id,
)
```

## State is sealed

`DrinkDetailsState` is a `sealed class`, so the screen's `switch` over loading,
success, and error is exhaustive and the compiler catches a missing case.

## Mapping into the design system

`DetailsView` from [`mealify_design_system`](../../../shared/mealify_design_system)
is feature-agnostic, so this screen maps ingredients into the widget's `DetailsRow`
type and passes tab labels from
[`mealify_localizations`](../../../shared/mealify_localizations):

```dart
rows: [
  for (final ingredient in drink.ingredients)
    (label: ingredient.name, value: ingredient.measurement),
],
rowsTabLabel: context.l10n.ingredientsTabText,
```

The `ingredients` getter is an extension from
[`ingredients_domain`](../../ingredients/ingredients_domain).

## A note on the missing subfeature barrel

[`meals_presentation`](../../meals/meals_presentation) has both a primary barrel
and a `meal_details.dart` subfeature barrel; this package has only the primary one.
With a single screen the primary barrel is the only entry point, so the app defers
the whole package and the result is the same. A second screen here would want its
own barrel.

## Testing

`make test` from the repo root, or `fvm flutter test` here.
