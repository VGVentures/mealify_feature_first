import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';

/// The response from MealDB for a single Random Drink call
class SingleDrinkResponse {
  const SingleDrinkResponse._({required this.drink});

  /// Convert a json response of a random meal into a proper Dart object
  factory SingleDrinkResponse.fromJson(Map<String, dynamic> json) {
    if (json['drinks'] == null) {
      throw SingleDrinkResponseNoMealException();
    }

    return SingleDrinkResponse._(
      drink: Drink.fromJson(
        (json['drinks'] as List<dynamic>).cast<Map<String, dynamic>>().first,
      ),
    );
  }

  /// The meal contained in the response
  final Drink drink;
}

/// Thrown if the random meal response does not contain a Meal
class SingleDrinkResponseNoMealException implements Exception {}
