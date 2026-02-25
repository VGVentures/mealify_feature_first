import 'package:drinks_presentation/drinks_routes.dart';
import 'package:favorites_presentation/favorites_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:ideas_presentation/ideas_routes.dart';
import 'package:mealify_app/app_router/responsive_scaffold.dart';
import 'package:meals_presentation/meals_routes.dart';

List<RouteBase> get appRoutes => [
  StatefulShellRoute.indexedStack(
    builder: (context, state, shell) {
      return ResponsiveScaffold(navigationShell: shell);
    },
    branches: [
      StatefulShellBranch(
        routes: [
          GoRouteData.$route(
            path: IdeasRoute.path,
            factory: IdeasRoute.fromState,
            routes: [
              GoRouteData.$route(
                path: MealDetailsRoute.path,
                factory: MealDetailsRoute.fromState,
              ),
              GoRouteData.$route(
                path: DrinkDetailsRoute.path,
                factory: DrinkDetailsRoute.fromState,
              ),
            ],
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRouteData.$route(
            path: FavoritesListRoute.path,
            factory: FavoritesListRoute.fromState,
            routes: [
              GoRouteData.$route(
                path: FavoriteDetailsRoute.path,
                factory: FavoriteDetailsRoute.fromState,
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
