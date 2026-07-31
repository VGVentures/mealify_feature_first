# meals_presentation

The presentation layer for meals. One screen: meal details.

Depends on [`meals_domain`](../meals_domain) for its types and on the app to hand
it an `IMealsRepository`. It has no dependency on
[`meals_data`](../meals_data), which is what lets it be tested without a database
or a network.

## What lives here

```
lib/
  meal_details.dart                  subfeature barrel
  meals_presentation.dart            primary barrel, re-exports the above
  src/meal_details/
    meal_details_module.dart         entry point
    bloc/meal_details_cubit.dart     MealDetailsCubit
    bloc/meal_details_state.dart     MealDetailsLoading / Success / Error
    views/meal_details_screen.dart   MealDetailsScreen
```

## The module is the entry point

`MealDetailsModule` states everything the screen needs in its constructor,
provides the cubit, and renders the screen. Nothing outside this package
constructs the cubit or the screen directly:

```dart
MealDetailsModule(
  mealsRepository: context.read(),
  mealId: id,
)
```

Because dependencies arrive as arguments rather than being looked up, the same
module works from a `go_router` route, from a test, or as the root widget of a
`FlutterEngine` in an add-to-app host.

## Two barrels, one screen

`meal_details.dart` exists so the app can defer-load this screen on its own:

```dart
import 'package:meals_presentation/meal_details.dart' deferred as meal_details;
```

With only the primary barrel, a deferred import would pull in everything the
package will ever contain. One screen does not need the split today; the barrel is
there so adding a second screen does not force the app to change how it loads the
first.

## State is sealed

`MealDetailsState` is a `sealed class`, so the screen's `switch` is exhaustive and
a new variant becomes a compile error instead of a blank screen:

```dart
switch (state) {
  MealDetailsLoading() => const LoadingView(),
  MealDetailsError(:final error) => ErrorView(error: error),
  final MealDetailsSuccess s => DetailsView(...),
}
```

## Mapping into the design system

`DetailsView` from [`mealify_design_system`](../../../shared/mealify_design_system)
knows nothing about meals. The screen converts ingredients into the widget's own
`DetailsRow` type and supplies the tab labels from
[`mealify_localizations`](../../../shared/mealify_localizations):

```dart
rows: [
  for (final ingredient in s.meal.ingredients)
    (label: ingredient.name, value: ingredient.measurement),
],
rowsTabLabel: context.l10n.ingredientsTabText,
```

The `ingredients` getter is an extension from
[`ingredients_domain`](../../ingredients/ingredients_domain).

## Testing

`make test` from the repo root, or `fvm flutter test` here.
