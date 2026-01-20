import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mealify_app/app_router/deferred_loader.dart';
import 'package:mealify_app/app_router/responsive_scaffold.dart';
import 'package:mealify_app/drink_details/drink_details.dart'
    deferred as drink_details;
import 'package:mealify_app/favorites/view/favorite_details_module.dart'
    deferred as favorite_details;
import 'package:mealify_app/favorites/view/favorites_list_module.dart'
    deferred as favorites_list;
import 'package:mealify_app/ideas/ideas.dart' deferred as ideas;
import 'package:mealify_app/meal_details/meal_details.dart'
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
          return ideas.IdeasModule();
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
          return favorites_list.FavoritesListModule();
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
