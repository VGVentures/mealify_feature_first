import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:http_client_factory/http_client_factory.dart';
import 'package:test/test.dart';

void main() {
  group('$CocktailDbApiClient Integration Test', () {
    test('should fetch a random meal', () async {
      final client = CocktailDbApiClient(httpClient: httpClientFactory());

      final randomMeal = await client.fetchRandomDrink();

      expect(randomMeal, isNotNull);
    });
  });
}
