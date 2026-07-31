# ideas_presentation

A **presentation-only** feature. No domain layer, no data layer.

This is the app's home screen: it suggests a random meal with a random drink, lets
you lock either one and re-roll the other, and lets you favorite the pair. It owns
no models and no storage, because everything it shows belongs to another feature.

It is worth reading as the answer to "what if a screen is the whole feature?" A
feature does not need three packages. It needs the layers it actually has.

## What lives here

```
lib/
  ideas_presentation.dart            primary barrel
  src/ideas/
    ideas_module.dart                entry point
    bloc/ideas_cubit.dart            IdeasCubit
    bloc/ideas_state.dart            IdeasLoading / IdeasSuccess / IdeasError
    views/ideas_screen.dart          IdeasScreen
```

## It composes three domains

`IdeasModule` takes three repository interfaces and two navigation callbacks:

```dart
IdeasModule(
  drinksRepository: context.read(),
  mealsRepository: context.read(),
  favoritesRepository: context.read(),
  onDrinkTapped: (drink) => DrinkDetailsRoute(id: drink.id).go(context),
  onMealTapped: (meal) => MealDetailsRoute(id: meal.id).go(context),
)
```

Three features' worth of data, assembled in a cubit, with no coupling between them.
The composition happens here in the presentation layer rather than in a domain use
case, because it is a screen concern: nothing else in the app needs "a random meal
and a random drink together".

Compare with [`favorites_domain`](../../favorites/favorites_domain), where the
combination *is* a domain concept and so lives in `GetFavoriteQuery`. Which layer
composes depends on whether the combination is part of the model or part of the
screen.

## The state carries the lock flags

`IdeasSuccess` holds the meal, the drink, whether the pair is favorited, and
whether each side is locked:

```dart
class IdeasSuccess implements IdeasState {
  final Meal meal;
  final Drink drink;
  final bool isFavorite;
  final bool mealLocked;
  final bool drinkLocked;
}
```

`generateNewIdea` re-rolls only the unlocked sides. `isFavorite` is not fetched
once but watched: the cubit subscribes to
`IFavoritesRepository.watchIsFavorite(mealId:, drinkId:)`, so the heart icon stays
right even if the same pair is un-favorited from the favorites list. The
subscription is cancelled in `close()`.

## Dependencies

[`meals_domain`](../../meals/meals_domain),
[`drinks_domain`](../../drinks/drinks_domain), and
[`favorites_domain`](../../favorites/favorites_domain), plus the design system and
localizations. No data packages, and no other presentation packages: it navigates
to the meal and drink screens through callbacks rather than by importing them.

## Testing

`make test` from the repo root, or `fvm flutter test` here. The cubit tests cover
the lock behavior, the favorite toggle, and the error path for each repository.
