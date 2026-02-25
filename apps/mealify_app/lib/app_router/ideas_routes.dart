part of 'routes.dart';

/// The branch for the ideas route
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

class IdeasBranch extends StatefulShellBranchData {
  const IdeasBranch();
}

class IdeasRoute extends GoRouteData with $IdeasRoute {
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

class MealDetailsRoute extends GoRouteData with $MealDetailsRoute {
  const MealDetailsRoute({required this.id});

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

class DrinkDetailsRoute extends GoRouteData with $DrinkDetailsRoute {
  const DrinkDetailsRoute({required this.id});

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
