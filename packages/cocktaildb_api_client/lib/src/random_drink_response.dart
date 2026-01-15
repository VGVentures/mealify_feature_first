import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';

/// The response from MealDB for a single Random Drink call
class RandomDrinkResponse {
  const RandomDrinkResponse._({required this.drink});

  /// Convert a json response of a random meal into a proper Dart object
  factory RandomDrinkResponse.fromJson(Map<String, dynamic> json) {
    if (json['drinks'] == null) {
      throw RandomDrinkResponseNoMealException();
    }

    return RandomDrinkResponse._(
      drink: Drink.fromJson(
        (json['drinks'] as List<dynamic>).cast<Map<String, dynamic>>().first,
      ),
    );
  }

  /// The meal contained in the response
  final Drink drink;
}

/// Thrown if the random meal response does not contain a Meal
class RandomDrinkResponseNoMealException implements Exception {}
