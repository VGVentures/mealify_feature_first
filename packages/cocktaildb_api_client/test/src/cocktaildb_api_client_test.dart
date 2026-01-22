import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:http/http.dart' as http;
import 'package:http_client_factory/http_client_factory.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockHttpClient extends Mock implements http.Client {}

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

  group('$CocktailDbApiClient unit test', () {
    test('throws an exception if the request fails', () {
      final httpClient = MockHttpClient();
      final cocktailDbApiClient = CocktailDbApiClient(httpClient: httpClient);

      when(
        () => httpClient.get(CocktailDbApiClient.randomDrinkUri),
      ).thenAnswer((_) async => http.Response('400', 400));

      expect(
        () async => cocktailDbApiClient.fetchRandomDrink(),
        throwsA(
          CocktailDbApiHttpException(
            uri: CocktailDbApiClient.randomDrinkUri,
            statusCode: 400,
            body: '400',
          ),
        ),
      );
    });
  });
}
