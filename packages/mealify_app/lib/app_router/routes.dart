import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mealify_app/app_router/responsive_scaffold.dart';
import 'package:mealify_app/favorites/favorites.dart';
import 'package:mealify_app/ideas/ideas.dart';
import 'package:mealify_app/meal_details/bloc/meal_details_cubit.dart';
import 'package:mealify_app/meal_details/meal_details.dart';

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
        TypedGoRoute<FavoritesRoute>(
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
      child: BlocProvider<IdeasCubit>(
        child: const IdeasScreen(),
        create: (context) => IdeasCubit(
          drinksRepository: context.read(),
          mealsRepository: context.read(),
        ),
      ),
    );
  }
}

class MealDetailsRoute extends GoRouteData with $MealDetailsRoute {
  const MealDetailsRoute({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider<MealDetailsCubit>(
      create: (BuildContext context) {
        return MealDetailsCubit(mealsRepository: context.read());
      },
      child: MealDetailsScreen(mealId: id),
    );
  }
}

class DrinkDetailsRoute extends GoRouteData with $DrinkDetailsRoute {
  const DrinkDetailsRoute({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DrinkDetailsScreen(id: id);
  }
}

class FavoritesRoute extends GoRouteData with $FavoritesRoute {
  const FavoritesRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: FavoritesScreen());
  }
}

class FavoriteDetailsRoute extends GoRouteData with $FavoriteDetailsRoute {
  const FavoriteDetailsRoute({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FavoriteDetailsScreen(id: id);
  }
}
