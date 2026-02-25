import 'package:drinks_domain/drinks_domain.dart';
import 'package:drinks_presentation/src/drink_details/view/drink_details_module.dart'
    deferred as drink_details_module;
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:provider/provider.dart';

/// Route data for the Drink Details screen.
class DrinkDetailsRoute extends GoRouteData {
  /// Creates a [DrinkDetailsRoute].
  const DrinkDetailsRoute({required this.id});

  /// Creates a [DrinkDetailsRoute] from a [GoRouterState].
  factory DrinkDetailsRoute.fromState(GoRouterState state) =>
      DrinkDetailsRoute(id: state.pathParameters['id']!);

  /// The drink id.
  final String id;

  /// The path segment for this route.
  static const String path = DrinkRoutePaths.details;

  @override
  String get location =>
      GoRouteData.$location(DrinkRoutePaths.detailsLocation(id));

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
      loader: drink_details_module.loadLibrary,
      builder: (context) {
        return drink_details_module.DrinkDetailsModule(
          drinksRepository: context.read(),
          drinkId: id,
        );
      },
    );
  }
}
