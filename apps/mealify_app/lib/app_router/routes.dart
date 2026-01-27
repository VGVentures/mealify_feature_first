import 'package:drinks_presentation/drinks_presentation.dart'
    deferred as drink_details;
import 'package:favorites_presentation/favorite_details.dart'
    deferred as favorite_details;
import 'package:favorites_presentation/favorites_list.dart'
    deferred as favorites_list;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ideas_presentation/ideas_presentation.dart' deferred as ideas;
import 'package:mealify_app/app_router/deferred_loader.dart';
import 'package:mealify_app/app_router/responsive_scaffold.dart';
import 'package:meals_presentation/meals_presentation.dart'
    deferred as meal_details;

part 'routes.g.dart';

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: [
    TypedStatefulShellBranch<IdeasBranch>(
      routes: [
        TypedGoRoute<IdeasRoute>(
          path: '/ideas',
          routes: [
            TypedGoRoute<MealDetailsRoute>(path: 'meal/:id'),
            TypedGoRoute<DrinkDetailsRoute>(path: 'drink/:id'),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<FavoritesBranch>(
      routes: [
        TypedGoRoute<FavoritesListRoute>(
          path: '/favorites',
          routes: [
            TypedGoRoute<FavoriteDetailsRoute>(path: ':id'),
          ],
        ),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ResponsiveScaffold(navigationShell: navigationShell);
  }
}

class IdeasBranch extends StatefulShellBranchData {
  const IdeasBranch();
}

class FavoritesBranch extends StatefulShellBranchData {
  const FavoritesBranch();
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
        return meal_details.MealDetailsModule(mealId: id);
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
        return drink_details.DrinkDetailsModule(drinkId: id);
      },
    );
  }
}

class FavoritesListRoute extends GoRouteData with $FavoritesListRoute {
  const FavoritesListRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      child: DeferredLoader(
        loader: favorites_list.loadLibrary,
        builder: (context) {
          return favorites_list.FavoritesListModule(
            onFavoriteTapped: (favorite) {
              FavoriteDetailsRoute(id: favorite.id).go(context);
            },
          );
        },
      ),
    );
  }
}

class FavoriteDetailsRoute extends GoRouteData with $FavoriteDetailsRoute {
  const FavoriteDetailsRoute({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DeferredLoader(
      loader: favorite_details.loadLibrary,
      builder: (context) {
        return favorite_details.FavoriteDetailsModule(
          id: id,
        );
      },
    );
  }
}
