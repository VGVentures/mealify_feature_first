import 'package:meals_data/src/data_sources/mealdb_api_client/dtos/api_meal.dart';

/// The response from MealDB for a single Random Meal call
class SingleApiMealResponse {
  const SingleApiMealResponse._({required this.meal});

  /// Convert a json response of a random meal into a proper Dart object
  factory SingleApiMealResponse.fromJson(Map<String, dynamic> json) {
    if (json['meals'] == null) {
      throw SingleApiMealResponseNoMealException();
    }

    return SingleApiMealResponse._(
      meal: ApiMeal.fromJson(
        (json['meals'] as List<dynamic>).cast<Map<String, dynamic>>().first,
      ),
    );
  }

  /// The meal contained in the response
  final ApiMeal meal;
}

/// Thrown if the random meal response does not contain a Meal
class SingleApiMealResponseNoMealException implements Exception {}
