import 'package:meals_domain/src/meal.dart';

/// A data source for interacting with [Meal] objects
abstract interface class IMealsRepository {
  /// Get a [Meal] by Id
  Future<Meal> getMealById(String id);

  /// Get a random [Meal]
  Future<Meal> getRandomMeal();
}
