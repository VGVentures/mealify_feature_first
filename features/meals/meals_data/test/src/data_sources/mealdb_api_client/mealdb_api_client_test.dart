import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http_client_factory/http_client_factory.dart';
import 'package:meals_data/meals_data.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  group('$MealDbApiClient Integration Test', () {
    test('should fetch a meal by id', () async {
      final client = MealDbApiClient(httpClient: httpClientFactory());

      final randomMeal = await client.fetchMealById('52772');

      expect(randomMeal, isNotNull);
    });

    test('should fetch a random meal', () async {
      final client = MealDbApiClient(httpClient: httpClientFactory());

      final randomMeal = await client.fetchRandomMeal();

      expect(randomMeal, isNotNull);
    });
  });

  group('$MealDbApiClient unit test', () {
    test('throws an exception if the request fails', () {
      final httpClient = MockHttpClient();
      final cocktailDbApiClient = MealDbApiClient(httpClient: httpClient);

      when(
        () => httpClient.get(MealDbApiClient.randomMealUri),
      ).thenAnswer((_) async => http.Response('400', 400));

      expect(
        () async => cocktailDbApiClient.fetchRandomMeal(),
        throwsA(
          MealDbApiHttpException(
            uri: MealDbApiClient.randomMealUri,
            statusCode: 400,
            body: '400',
          ),
        ),
      );
    });
  });
}
