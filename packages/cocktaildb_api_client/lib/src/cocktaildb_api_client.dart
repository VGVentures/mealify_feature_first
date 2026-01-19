import 'dart:convert';

import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:cocktaildb_api_client/src/random_drink_response.dart';
import 'package:http/http.dart' as http;
import 'package:http_status/http_status.dart';

/// A client that interacts with the MealDB api
class CocktailDbApiClient {
  /// Constructs a MealDB api client
  CocktailDbApiClient({
    /// The httpClient used to fetch data from the MealDB api
    required http.Client httpClient,
  }) : _httpClient = httpClient;

  final http.Client _httpClient;

  /// Fetch a random meal from the MealDB api
  Future<Drink> fetchDrinkById(String id) async {
    final uri = Uri.parse(
      'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=$id',
    );
    final httpResponse = await _httpClient.get(uri);

    if (httpResponse.statusCode >= HttpStatusCode.badRequest) {
      throw CocktailDbApiHttpException(
        uri: uri,
        statusCode: httpResponse.statusCode,
        body: httpResponse.body,
      );
    } else {
      return SingleDrinkResponse.fromJson(
        jsonDecode(httpResponse.body) as Map<String, dynamic>,
      ).drink;
    }
  }

  /// Fetch a random meal from the MealDB api
  Future<Drink> fetchRandomDrink() async {
    final uri = Uri.parse(
      'https://www.thecocktaildb.com/api/json/v1/1/random.php',
    );
    final httpResponse = await _httpClient.get(uri);

    if (httpResponse.statusCode >= HttpStatusCode.badRequest) {
      throw CocktailDbApiHttpException(
        uri: uri,
        statusCode: httpResponse.statusCode,
        body: httpResponse.body,
      );
    } else {
      return SingleDrinkResponse.fromJson(
        jsonDecode(httpResponse.body) as Map<String, dynamic>,
      ).drink;
    }
  }
}

/// There was an error fetching the http request
class CocktailDbApiHttpException implements Exception {
  /// Constructs an HttpException
  const CocktailDbApiHttpException({
    required this.uri,
    required this.statusCode,
    required this.body,
  });

  /// The uri being called
  final Uri uri;

  /// The status code of the http response
  final int statusCode;

  /// The body which should contain the error describing why the call failed
  final String body;

  @override
  String toString() => 'HttpException {\n  $uri,\n  $statusCode,\n  $body\n}';
}
