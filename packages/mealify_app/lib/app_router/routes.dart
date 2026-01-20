import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
import 'package:mealify_app/widgets/loading_screen.dart';

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
      child: FutureBuilder(
        future: ideas.loadLibrary(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ideas.IdeasModule();
          }
          return const LoadingScreen();
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
    return FutureBuilder(
      future: meal_details.loadLibrary(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return meal_details.MealDetailsModule(mealId: id);
        }
        return const LoadingScreen();
      },
    );
  }
}

class DrinkDetailsRoute extends GoRouteData {
  const DrinkDetailsRoute({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FutureBuilder(
      future: drink_details.loadLibrary(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return drink_details.DrinkDetailsModule(drinkId: id);
        }
        return const LoadingScreen();
      },
    );
  }
}

class FavoritesListRoute extends GoRouteData with $FavoritesRoute {
  const FavoritesListRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      child: FutureBuilder(
        future: favorites_list.loadLibrary(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return favorites_list.FavoritesListModule();
          }
          return const LoadingScreen();
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
    return FutureBuilder(
      future: favorite_details.loadLibrary(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return favorite_details.FavoriteDetailsModule(
            id: id,
          );
        }
        return const LoadingScreen();
      },
    );
  }
}
