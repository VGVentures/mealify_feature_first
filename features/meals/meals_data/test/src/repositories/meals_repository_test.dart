// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:meals_data/meals_data.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:mocktail/mocktail.dart';

class MockMealsDatabase extends Mock implements MealsDatabase {}

class MockMealDbApiClient extends Mock implements MealDbApiClient {}

void main() {
  group('$MealsRepository', () {
    group('meal by id', () {
      test(
        'should get a meal by id from the local database if it exists',
        () async {
          final mealsDb = MockMealsDatabase();
          final mealDbApiClient = MockMealDbApiClient();
          final repository = MealsRepository(
            mealsDb: mealsDb,
            mealDbApiClient: mealDbApiClient,
          );

          when(
            () => mealsDb.getMeal('TEST_ID'),
          ).thenAnswer(
            (_) async => DbMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          );

          expect(
            await repository.getMealById('TEST_ID'),
            Meal(
              id: 'TEST_ID',
              title: '',
              instructions: '',
              thumbnail: '',
            ),
          );

          verify(() => mealsDb.getMeal('TEST_ID')).called(1);
          verifyNoMoreInteractions(mealsDb);
          verifyZeroInteractions(mealDbApiClient);
        },
      );

      test(
        'should fall back to the api if db does not contain meal',
        () async {
          final mealsDb = MockMealsDatabase();
          final mealDbApiClient = MockMealDbApiClient();
          final repository = MealsRepository(
            mealsDb: mealsDb,
            mealDbApiClient: mealDbApiClient,
          );

          when(
            () => mealsDb.getMeal('TEST_ID'),
          ).thenAnswer((_) async => null);

          when(
            () => mealsDb.saveMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          ).thenAnswer((_) async {});

          when(
            () => mealDbApiClient.fetchMealById('TEST_ID'),
          ).thenAnswer(
            (_) async => ApiMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          );

          expect(
            await repository.getMealById('TEST_ID'),
            Meal(
              id: 'TEST_ID',
              title: '',
              instructions: '',
              thumbnail: '',
            ),
          );

          verify(() => mealsDb.getMeal('TEST_ID')).called(1);
          verify(() => mealDbApiClient.fetchMealById('TEST_ID')).called(1);
          verify(
            () => mealsDb.saveMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          ).called(1);
          verifyNoMoreInteractions(mealsDb);
          verifyNoMoreInteractions(mealDbApiClient);
        },
      );
    });

    group('random meal', () {
      test(
        'should get a random meal',
        () async {
          final mealsDb = MockMealsDatabase();
          final mealDbApiClient = MockMealDbApiClient();
          final repository = MealsRepository(
            mealsDb: mealsDb,
            mealDbApiClient: mealDbApiClient,
          );

          when(
            () => mealsDb.saveMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          ).thenAnswer((_) async {});

          when(
            mealDbApiClient.fetchRandomMeal,
          ).thenAnswer(
            (_) async => ApiMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          );

          expect(
            await repository.getRandomMeal(),
            Meal(
              id: 'TEST_ID',
              title: '',
              instructions: '',
              thumbnail: '',
            ),
          );

          verify(mealDbApiClient.fetchRandomMeal).called(1);
          verify(
            () => mealsDb.saveMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          ).called(1);
          verifyNoMoreInteractions(mealsDb);
          verifyNoMoreInteractions(mealDbApiClient);
        },
      );
    });
  });
}
