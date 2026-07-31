import 'package:drinks_data/src/data_sources/cocktaildb_api_client/dtos/api_drink.dart'
    as api;

/// The response from drinkDB for a single Random Drink call
class SingleDrinkResponse {
  const SingleDrinkResponse._({required this.drink});

  /// Convert a json response of a random drink into a proper Dart object
  factory SingleDrinkResponse.fromJson(Map<String, dynamic> json) {
    if (json['drinks'] == null) {
      throw SingleDrinkResponseNodrinkException();
    }

    return SingleDrinkResponse._(
      drink: api.ApiDrink.fromJson(
        (json['drinks'] as List<dynamic>).cast<Map<String, dynamic>>().first,
      ),
    );
  }

  /// The drink contained in the response
  final api.ApiDrink drink;
}

/// Thrown if the random drink response does not contain a drink
class SingleDrinkResponseNodrinkException implements Exception {}
