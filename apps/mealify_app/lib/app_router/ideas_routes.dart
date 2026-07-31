part of 'routes.dart';

/// The ideas tab: the pairing screen at `/ideas`, with meal and drink details
/// nested beneath it so tapping either one stays inside this branch.
const ideasBranch = TypedStatefulShellBranch<IdeasBranch>(
  routes: [
    TypedGoRoute<IdeasRoute>(
      path: '/ideas',
      routes: [
        TypedGoRoute<MealDetailsRoute>(path: 'meal/:id'),
        TypedGoRoute<DrinkDetailsRoute>(path: 'drink/:id'),
      ],
    ),
  ],
);

/// The navigation branch backing the ideas tab.
class IdeasBranch extends StatefulShellBranchData {
  /// Construct the ideas branch.
  const IdeasBranch();
}

/// The pairing screen at `/ideas`, and the app's initial location.
///
/// Uses `NoTransitionPage` because this is a tab root: an animation would play
/// every time the user switches tabs.
class IdeasRoute extends GoRouteData with $IdeasRoute {
  /// Construct the ideas route.
  const IdeasRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      child: DeferredLoader(
        loader: ideas.loadLibrary,
        builder: (context) {
          return ideas.IdeasModule(
            drinksRepository: context.read(),
            mealsRepository: context.read(),
            favoritesRepository: context.read(),
            // ideas_presentation reports what was tapped and knows nothing
            // about routes. The app translates that into navigation, which is
            // why the ideas feature has no dependency on the meals or drinks
            // presentation packages.
            onDrinkTapped: (drink) {
              DrinkDetailsRoute(id: drink.id).go(context);
            },
            onMealTapped: (meal) {
              MealDetailsRoute(id: meal.id).go(context);
            },
          );
        },
      ),
    );
  }
}

/// A meal at `/ideas/meal/:id`. Rebuildable from [id] alone.
class MealDetailsRoute extends GoRouteData with $MealDetailsRoute {
  /// Construct the route for the meal with [id].
  const MealDetailsRoute({required this.id});

  /// The id of the meal to display.
  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DeferredLoader(
      loader: meal_details.loadLibrary,
      builder: (context) {
        return meal_details.MealDetailsModule(
          mealsRepository: context.read(),
          mealId: id,
        );
      },
    );
  }
}

/// A drink at `/ideas/drink/:id`. Rebuildable from [id] alone.
class DrinkDetailsRoute extends GoRouteData with $DrinkDetailsRoute {
  /// Construct the route for the drink with [id].
  const DrinkDetailsRoute({required this.id});

  /// The id of the drink to display.
  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DeferredLoader(
      loader: drink_details.loadLibrary,
      builder: (context) {
        return drink_details.DrinkDetailsModule(
          drinksRepository: context.read(),
          drinkId: id,
        );
      },
    );
  }
}
