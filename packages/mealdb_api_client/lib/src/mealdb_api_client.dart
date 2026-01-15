import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_status/http_status.dart';
import 'package:mealdb_api_client/src/meal.dart';
import 'package:mealdb_api_client/src/random_meal_response.dart';

/// A client that interacts with the MealDB api
class MealdbApiClient {
  /// Constructs a MealDB api client
  MealdbApiClient({
    /// The httpClient used to fetch data from the MealDB api
    required http.Client httpClient,
  }) : _httpClient = httpClient;

  final http.Client _httpClient;

  /// Fetch a random meal from the MealDB api
  Future<Meal> fetchRandomMeal() async {
    final uri = Uri.parse('https://www.themealdb.com/api/json/v1/1/random.php');
    final httpResponse = await _httpClient.get(uri);

    if (httpResponse.statusCode >= HttpStatusCode.badRequest) {
      throw HttpException(
        uri: uri,
        statusCode: httpResponse.statusCode,
        body: httpResponse.body,
      );
    } else {
      return RandomMealResponse.fromJson(
        jsonDecode(httpResponse.body) as Map<String, dynamic>,
      ).meal;
    }
  }
}

/// There was an error fetching the http request
class HttpException implements Exception {
  /// Constructs an HttpException
  const HttpException({
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
