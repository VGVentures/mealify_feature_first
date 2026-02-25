import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:meals_presentation/src/meal_details/view/meal_details_module.dart'
    deferred as meal_details_module;
import 'package:provider/provider.dart';

/// Route data for the Meal Details screen.
class MealDetailsRoute extends GoRouteData {
  /// Creates a [MealDetailsRoute].
  const MealDetailsRoute({required this.id});

  /// Creates a [MealDetailsRoute] from a [GoRouterState].
  factory MealDetailsRoute.fromState(GoRouterState state) =>
      MealDetailsRoute(id: state.pathParameters['id']!);

  /// The meal id.
  final String id;

  /// The path segment for this route.
  static const String path = MealRoutePaths.details;

  @override
  String get location =>
      GoRouteData.$location(MealRoutePaths.detailsLocation(id));

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
      loader: meal_details_module.loadLibrary,
      builder: (context) {
        return meal_details_module.MealDetailsModule(
          mealsRepository: context.read(),
          mealId: id,
        );
      },
    );
  }
}
