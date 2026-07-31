import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_status/http_status.dart';
import 'package:meals_data/src/data_sources/mealdb_api_client/dtos/api_meal.dart';
import 'package:meals_data/src/data_sources/mealdb_api_client/dtos/single_api_meal_response.dart';
import 'package:meta/meta.dart';

/// A client that interacts with the MealDB api
class MealDbApiClient {
  /// Constructs a MealDB api client
  MealDbApiClient({
    /// The httpClient used to fetch data from the MealDB api
    required http.Client httpClient,
  }) : _httpClient = httpClient;

  final http.Client _httpClient;

  /// The Uri to fetch a random meal
  static final Uri randomMealUri = Uri.parse(
    'https://www.themealdb.com/api/json/v1/1/random.php',
  );

  /// Fetch a random meal from the MealDB api
  Future<ApiMeal> fetchMealById(String id) async {
    return _fetchSingleMeal(
      Uri.parse(
        'https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id',
      ),
    );
  }

  /// Fetch a random meal from the MealDB api
  Future<ApiMeal> fetchRandomMeal() async => _fetchSingleMeal(randomMealUri);

  Future<ApiMeal> _fetchSingleMeal(Uri uri) async {
    final httpResponse = await _httpClient.get(uri);

    if (httpResponse.statusCode >= HttpStatusCode.badRequest) {
      throw MealDbApiHttpException(
        uri: uri,
        statusCode: httpResponse.statusCode,
        body: httpResponse.body,
      );
    }

    return SingleApiMealResponse.fromJson(
      jsonDecode(httpResponse.body) as Map<String, dynamic>,
    ).meal;
  }
}

/// There was an error fetching the http request
@immutable
class MealDbApiHttpException implements Exception {
  /// Constructs an HttpException
  const MealDbApiHttpException({
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealDbApiHttpException &&
          runtimeType == other.runtimeType &&
          uri == other.uri &&
          statusCode == other.statusCode &&
          body == other.body;

  @override
  int get hashCode => Object.hash(uri, statusCode, body);
}
