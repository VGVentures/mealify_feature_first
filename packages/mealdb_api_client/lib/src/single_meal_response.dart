import 'package:mealdb_api_client/src/meal.dart';

/// The response from MealDB for a single Random Meal call
class SingleMealResponse {
  const SingleMealResponse._({required this.meal});

  /// Convert a json response of a random meal into a proper Dart object
  factory SingleMealResponse.fromJson(Map<String, dynamic> json) {
    if (json['meals'] == null) {
      throw SingleMealResponseNoMealException();
    }

    return SingleMealResponse._(
      meal: Meal.fromJson(
        (json['meals'] as List<dynamic>).cast<Map<String, dynamic>>().first,
      ),
    );
  }

  /// The meal contained in the response
  final Meal meal;
}

/// Thrown if the random meal response does not contain a Meal
class SingleMealResponseNoMealException implements Exception {}
