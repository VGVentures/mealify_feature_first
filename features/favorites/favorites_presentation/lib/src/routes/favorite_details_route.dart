import 'package:favorites_presentation/src/favorite_details/view/favorite_details_module.dart'
    deferred as favorite_details_module;
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:provider/provider.dart';

/// Route data for the Favorite Details screen.
class FavoriteDetailsRoute extends GoRouteData {
  /// Creates a [FavoriteDetailsRoute].
  const FavoriteDetailsRoute({required this.id});

  /// Creates a [FavoriteDetailsRoute] from a [GoRouterState].
  factory FavoriteDetailsRoute.fromState(GoRouterState state) =>
      FavoriteDetailsRoute(id: state.pathParameters['id']!);

  /// The favorite id.
  final String id;

  /// The path segment for this route.
  static const String path = ':id';

  @override
  String get location =>
      GoRouteData.$location('/favorites/${Uri.encodeComponent(id)}');

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
  Widget build(BuildContext context, GoRouterState state) {
    return DeferredLoader(
      loader: favorite_details_module.loadLibrary,
      builder: (context) {
        return favorite_details_module.FavoriteDetailsModule(
          id: id,
          favoritesRepository: context.read(),
          mealsRepository: context.read(),
          drinksRepository: context.read(),
        );
      },
    );
  }
}
