// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:cocktaildb_api_client/cocktaildb_api_client.dart' as api;
import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_database/mealify_database.dart' as db;
import 'package:mocktail/mocktail.dart';

class MockDrinksDao extends Mock implements db.DrinksDao {}

class MockCocktailDbApiClient extends Mock implements api.CocktailDbApiClient {}

void main() {
  group('$DrinksRepository', () {
    group('drink by id', () {
      test(
        'should get a drink by id from the local database if it exists',
        () async {
          final drinksDao = MockDrinksDao();
          final cocktailDbApiClient = MockCocktailDbApiClient();
          final repository = DrinksRepository(
            drinksDao: drinksDao,
            cocktailDbApiClient: cocktailDbApiClient,
          );

          when(
            () => drinksDao.getDrink('TEST_ID'),
          ).thenAnswer((_) async => db.Drink(idDrink: 'TEST_ID'));

          expect(
            await repository.getDrinkById('TEST_ID'),
            Drink(idDrink: 'TEST_ID'),
          );

          verify(() => drinksDao.getDrink('TEST_ID')).called(1);
          verifyNoMoreInteractions(drinksDao);
          verifyZeroInteractions(cocktailDbApiClient);
        },
      );

      test(
        'should fall back to the api if db does not contain drink',
        () async {
          final drinksDao = MockDrinksDao();
          final cocktailDbApiClient = MockCocktailDbApiClient();
          final repository = DrinksRepository(
            drinksDao: drinksDao,
            cocktailDbApiClient: cocktailDbApiClient,
          );

          when(
            () => drinksDao.getDrink('TEST_ID'),
          ).thenAnswer((_) async => null);

          when(
            () => drinksDao.saveDrink(idDrink: 'TEST_ID'),
          ).thenAnswer((_) async {});

          when(
            () => cocktailDbApiClient.fetchDrinkById('TEST_ID'),
          ).thenAnswer((_) async => api.Drink(idDrink: 'TEST_ID'));

          expect(
            await repository.getDrinkById('TEST_ID'),
            Drink(idDrink: 'TEST_ID'),
          );

          verify(() => drinksDao.getDrink('TEST_ID')).called(1);
          verify(() => cocktailDbApiClient.fetchDrinkById('TEST_ID')).called(1);
          verify(() => drinksDao.saveDrink(idDrink: 'TEST_ID')).called(1);
          verifyNoMoreInteractions(drinksDao);
          verifyNoMoreInteractions(cocktailDbApiClient);
        },
      );
    });

    group('random drink', () {
      test(
        'should get a random drink',
        () async {
          final drinksDao = MockDrinksDao();
          final cocktailDbApiClient = MockCocktailDbApiClient();
          final repository = DrinksRepository(
            drinksDao: drinksDao,
            cocktailDbApiClient: cocktailDbApiClient,
          );

          when(
            () => drinksDao.saveDrink(idDrink: 'TEST_ID'),
          ).thenAnswer((_) async {});

          when(
            cocktailDbApiClient.fetchRandomDrink,
          ).thenAnswer((_) async => api.Drink(idDrink: 'TEST_ID'));

          expect(
            await repository.getRandomDrink(),
            Drink(idDrink: 'TEST_ID'),
          );

          verify(cocktailDbApiClient.fetchRandomDrink).called(1);
          verify(() => drinksDao.saveDrink(idDrink: 'TEST_ID')).called(1);
          verifyNoMoreInteractions(drinksDao);
          verifyNoMoreInteractions(cocktailDbApiClient);
        },
      );
    });
  });
}
