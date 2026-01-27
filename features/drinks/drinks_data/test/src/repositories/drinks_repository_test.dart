// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:drinks_data/drinks_data.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDrinksDatabase extends Mock implements DrinksDatabase {}

class MockCocktailDbApiClient extends Mock implements CocktailDbApiClient {}

void main() {
  group('$DrinksRepository', () {
    group('drink by id', () {
      test(
        'should get a drink by id from the local database if it exists',
        () async {
          final drinksDb = MockDrinksDatabase();
          final cocktailDbApiClient = MockCocktailDbApiClient();
          final repository = DrinksRepository(
            drinksDb: drinksDb,
            cocktailDbApiClient: cocktailDbApiClient,
          );

          when(
            () => drinksDb.getDrink('TEST_ID'),
          ).thenAnswer(
            (_) async => DbDrink(
              idDrink: 'TEST_ID',
              strDrink: '',
              strInstructions: '',
              strDrinkThumb: '',
            ),
          );

          expect(
            await repository.getDrinkById('TEST_ID'),
            Drink(
              id: 'TEST_ID',
              title: '',
              instructions: '',
              thumbnail: '',
            ),
          );

          verify(() => drinksDb.getDrink('TEST_ID')).called(1);
          verifyNoMoreInteractions(drinksDb);
          verifyZeroInteractions(cocktailDbApiClient);
        },
      );

      test(
        'should fall back to the api if db does not contain drink',
        () async {
          final drinksDb = MockDrinksDatabase();
          final cocktailDbApiClient = MockCocktailDbApiClient();
          final repository = DrinksRepository(
            drinksDb: drinksDb,
            cocktailDbApiClient: cocktailDbApiClient,
          );

          when(
            () => drinksDb.getDrink('TEST_ID'),
          ).thenAnswer((_) async => null);

          when(
            () => drinksDb.saveDrink(
              idDrink: 'TEST_ID',
              strDrink: '',
              strInstructions: '',
              strDrinkThumb: '',
            ),
          ).thenAnswer((_) async {});

          when(
            () => cocktailDbApiClient.fetchDrinkById('TEST_ID'),
          ).thenAnswer(
            (_) async => ApiDrink(
              idDrink: 'TEST_ID',
              strDrink: '',
              strInstructions: '',
              strDrinkThumb: '',
            ),
          );

          expect(
            await repository.getDrinkById('TEST_ID'),
            Drink(
              id: 'TEST_ID',
              title: '',
              instructions: '',
              thumbnail: '',
            ),
          );

          verify(() => drinksDb.getDrink('TEST_ID')).called(1);
          verify(() => cocktailDbApiClient.fetchDrinkById('TEST_ID')).called(1);
          verify(
            () => drinksDb.saveDrink(
              idDrink: 'TEST_ID',
              strDrink: '',
              strInstructions: '',
              strDrinkThumb: '',
            ),
          ).called(1);
          verifyNoMoreInteractions(drinksDb);
          verifyNoMoreInteractions(cocktailDbApiClient);
        },
      );
    });

    group('random drink', () {
      test(
        'should get a random drink',
        () async {
          final drinksDb = MockDrinksDatabase();
          final cocktailDbApiClient = MockCocktailDbApiClient();
          final repository = DrinksRepository(
            drinksDb: drinksDb,
            cocktailDbApiClient: cocktailDbApiClient,
          );

          when(
            () => drinksDb.saveDrink(
              idDrink: 'TEST_ID',
              strDrink: '',
              strInstructions: '',
              strDrinkThumb: '',
            ),
          ).thenAnswer((_) async {});

          when(
            cocktailDbApiClient.fetchRandomDrink,
          ).thenAnswer(
            (_) async => ApiDrink(
              idDrink: 'TEST_ID',
              strDrink: '',
              strInstructions: '',
              strDrinkThumb: '',
            ),
          );

          expect(
            await repository.getRandomDrink(),
            Drink(
              id: 'TEST_ID',
              title: '',
              instructions: '',
              thumbnail: '',
            ),
          );

          verify(cocktailDbApiClient.fetchRandomDrink).called(1);
          verify(
            () => drinksDb.saveDrink(
              idDrink: 'TEST_ID',
              strDrink: '',
              strInstructions: '',
              strDrinkThumb: '',
            ),
          ).called(1);
          verifyNoMoreInteractions(drinksDb);
          verifyNoMoreInteractions(cocktailDbApiClient);
        },
      );
    });
  });
}
