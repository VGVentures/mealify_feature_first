import 'dart:convert';

import 'package:drinks_data/src/data_sources/cocktaildb_api_client/api_drink.dart';
import 'package:drinks_data/src/data_sources/cocktaildb_api_client/single_api_drink_response.dart';
import 'package:http/http.dart' as http;
import 'package:http_status/http_status.dart';
import 'package:meta/meta.dart';

/// A client that interacts with the MealDB api
class CocktailDbApiClient {
  /// Constructs a MealDB api client
  CocktailDbApiClient({
    /// The httpClient used to fetch data from the MealDB api
    required http.Client httpClient,
  }) : _httpClient = httpClient;

  final http.Client _httpClient;

  /// The uri to fetch a random drink
  static final Uri randomDrinkUri = Uri.parse(
    'https://www.thecocktaildb.com/api/json/v1/1/random.php',
  );

  /// Fetch a random meal from the MealDB api
  Future<ApiDrink> fetchDrinkById(String id) async {
    return _fetchSingleDrink(
      Uri.parse(
        'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=$id',
      ),
    );
  }

  /// Fetch a random meal from the MealDB api
  Future<ApiDrink> fetchRandomDrink() => _fetchSingleDrink(randomDrinkUri);

  Future<ApiDrink> _fetchSingleDrink(Uri uri) async {
    final httpResponse = await _httpClient.get(uri);

    if (httpResponse.statusCode >= HttpStatusCode.badRequest) {
      throw CocktailDbApiHttpException(
        uri: uri,
        statusCode: httpResponse.statusCode,
        body: httpResponse.body,
      );
    }

    return SingleDrinkResponse.fromJson(
      jsonDecode(httpResponse.body) as Map<String, dynamic>,
    ).drink;
  }
}

/// There was an error fetching the http request
@immutable
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
  String toString() {
    // toString can be longer than 80 chars
    // ignore: lines_longer_than_80_chars
    return 'CocktailDbApiHttpException{uri: $uri, statusCode: $statusCode, body: $body}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CocktailDbApiHttpException &&
          runtimeType == other.runtimeType &&
          uri == other.uri &&
          statusCode == other.statusCode &&
          body == other.body;

  @override
  int get hashCode => Object.hash(uri, statusCode, body);
}
