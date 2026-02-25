import 'package:favorites_presentation/src/favorites_list/view/favorites_list_module.dart'
    deferred as favorites_list_module;
import 'package:favorites_presentation/src/routes/favorite_details_route.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:provider/provider.dart';

/// Route data for the Favorites List screen.
class FavoritesListRoute extends GoRouteData {
  /// Creates a [FavoritesListRoute].
  const FavoritesListRoute();

  /// Creates a [FavoritesListRoute] from a [GoRouterState].
  // ignore: avoid_unused_constructor_parameters
  factory FavoritesListRoute.fromState(GoRouterState state) =>
      const FavoritesListRoute();

  /// The path for this route.
  static const String path = '/favorites';

  @override
  String get location => GoRouteData.$location(path);

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      child: DeferredLoader(
        loader: favorites_list_module.loadLibrary,
        builder: (context) {
          return favorites_list_module.FavoritesListModule(
            favoritesRepository: context.read(),
            mealsRepository: context.read(),
            drinksRepository: context.read(),
            onFavoriteTapped: (favoriteId) {
              FavoriteDetailsRoute(id: favoriteId).go(context);
            },
          );
        },
      ),
    );
  }
}
