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
          return ideas.IdeasBuilder(
            component: context.read<AppComponent>(),
            listener: ideas.IdeasListener(
              onMealTapped: (meal) {
                MealDetailsRoute(id: meal.id).go(context);
              },
              onDrinkTapped: (drink) {
                DrinkDetailsRoute(id: drink.id).go(context);
              },
            ),
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
        return meal_details.MealDetailsBuilder(
          component: context.read<AppComponent>(),
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
        return drink_details.DrinkDetailsBuilder(
          component: context.read<AppComponent>(),
          drinkId: id,
        );
      },
    );
  }
}
