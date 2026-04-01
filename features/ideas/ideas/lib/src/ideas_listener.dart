import 'package:drinks_domain/drinks_domain.dart';
import 'package:meals_domain/meals_domain.dart';

/// Declares the events an Ideas RIB can emit upward.
///
/// Constructed by the app layer (routes) with navigation lambdas.
class IdeasListener {
  /// Construct a listener with the required callbacks.
  const IdeasListener({
    required this.onMealTapped,
    required this.onDrinkTapped,
  });

  /// Called when the user taps on a meal.
  final void Function(Meal meal) onMealTapped;

  /// Called when the user taps on a drink.
  final void Function(Drink drink) onDrinkTapped;
}
