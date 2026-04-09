import 'package:meals_domain/meals_domain.dart';

/// Declares the dependencies a Meal data provider RIB needs from its parent.
abstract interface class MealComponent {
  /// The repository for accessing meal data.
  IMealsRepository get mealsRepository;
}
