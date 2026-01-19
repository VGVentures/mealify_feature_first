import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:http_client_factory/http_client_factory.dart';
import 'package:test/test.dart';

void main() {
  group('$CocktailDbApiClient Integration Test', () {
    test('should fetch a drink by id', () async {
      final client = CocktailDbApiClient(httpClient: httpClientFactory());

      final drink = await client.fetchDrinkById('11007');

      expect(drink, isNotNull);
    });

    test('should fetch a random drink', () async {
      final client = CocktailDbApiClient(httpClient: httpClientFactory());

      final randomDrink = await client.fetchRandomDrink();

      expect(randomDrink, isNotNull);
    });
  });
}
