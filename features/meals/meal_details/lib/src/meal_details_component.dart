import 'package:meals_domain/meals_domain.dart';

/// Declares the dependencies a MealDetails RIB needs from its parent.
abstract interface class MealDetailsComponent {
  /// The repository for accessing meal data.
  IMealsRepository get mealsRepository;
}
