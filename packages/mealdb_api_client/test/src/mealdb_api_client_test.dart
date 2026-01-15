import 'package:http_client_factory/http_client_factory.dart';
import 'package:mealdb_api_client/mealdb_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('$MealDbApiClient Integration Test', () {
    test('should fetch a random meal', () async {
      final client = MealDbApiClient(httpClient: httpClientFactory());

      final randomMeal = await client.fetchRandomMeal();

      expect(randomMeal, isNotNull);
    });
  });
}
