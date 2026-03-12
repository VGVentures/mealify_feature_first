import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ideas_presentation/src/ideas_screen/view/ideas_module.dart'
    deferred as ideas_module;
import 'package:ideas_presentation/src/routes/ideas_route_paths.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:provider/provider.dart';

/// Route data for the Ideas screen.
class IdeasRoute extends GoRouteData {
  /// Creates an [IdeasRoute].
  const IdeasRoute();

  /// Creates an [IdeasRoute] from a [GoRouterState].
  // ignore: avoid_unused_constructor_parameters
  factory IdeasRoute.fromState(GoRouterState state) => const IdeasRoute();

  /// The path for this route.
  static const String path = IdeasRoutePaths.ideas;

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
        loader: ideas_module.loadLibrary,
        builder: (context) {
          return ideas_module.IdeasModule(
            drinksRepository: context.read(),
            mealsRepository: context.read(),
            favoritesRepository: context.read(),
            onDrinkTapped: (drink) {
              context.go(DrinkRoutePaths.detailsLocation(drink.id));
            },
            onMealTapped: (meal) {
              context.go(MealRoutePaths.detailsLocation(meal.id));
            },
          );
        },
      ),
    );
  }
}
