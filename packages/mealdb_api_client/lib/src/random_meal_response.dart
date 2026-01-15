import 'package:mealdb_api_client/src/meal.dart';

/// The response from MealDB for a single Random Meal call
class RandomMealResponse {
  const RandomMealResponse._({required this.meal});

  /// Convert a json response of a random meal into a proper Dart object
  factory RandomMealResponse.fromJson(Map<String, dynamic> json) {
    if (json['meals'] == null) {
      throw RandomMealResponseNoMealException();
    }

    return RandomMealResponse._(
      meal: Meal.fromJson(
        (json['meals'] as List<dynamic>).cast<Map<String, dynamic>>().first,
      ),
    );
  }

  /// The meal contained in the response
  final Meal meal;
}

/// Thrown if the random meal response does not contain a Meal
class RandomMealResponseNoMealException implements Exception {}
