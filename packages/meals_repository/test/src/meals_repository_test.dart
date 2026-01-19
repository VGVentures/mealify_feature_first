// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:mealdb_api_client/mealdb_api_client.dart' as api;
import 'package:mealify_database/mealify_database.dart' as db;
import 'package:meals_repository/meals_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockMealsDao extends Mock implements db.MealsDao {}

class MockMealDbApiClient extends Mock implements api.MealDbApiClient {}

void main() {
  group('$MealsRepository', () {
    group('meal by id', () {
      test(
        'should get a meal by id from the local database if it exists',
        () async {
          final mealsDao = MockMealsDao();
          final mealDbApiClient = MockMealDbApiClient();
          final repository = MealsRepository(
            mealsDao: mealsDao,
            mealDbApiClient: mealDbApiClient,
          );

          when(
            () => mealsDao.getMeal('TEST_ID'),
          ).thenAnswer(
            (_) async => db.Meal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          );

          expect(
            await repository.getMealById('TEST_ID'),
            Meal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          );

          verify(() => mealsDao.getMeal('TEST_ID')).called(1);
          verifyNoMoreInteractions(mealsDao);
          verifyZeroInteractions(mealDbApiClient);
        },
      );

      test(
        'should fall back to the api if db does not contain meal',
        () async {
          final mealsDao = MockMealsDao();
          final mealDbApiClient = MockMealDbApiClient();
          final repository = MealsRepository(
            mealsDao: mealsDao,
            mealDbApiClient: mealDbApiClient,
          );

          when(
            () => mealsDao.getMeal('TEST_ID'),
          ).thenAnswer((_) async => null);

          when(
            () => mealsDao.saveMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          ).thenAnswer((_) async {});

          when(
            () => mealDbApiClient.fetchMealById('TEST_ID'),
          ).thenAnswer(
            (_) async => api.Meal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          );

          expect(
            await repository.getMealById('TEST_ID'),
            Meal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          );

          verify(() => mealsDao.getMeal('TEST_ID')).called(1);
          verify(() => mealDbApiClient.fetchMealById('TEST_ID')).called(1);
          verify(
            () => mealsDao.saveMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          ).called(1);
          verifyNoMoreInteractions(mealsDao);
          verifyNoMoreInteractions(mealDbApiClient);
        },
      );
    });

    group('random meal', () {
      test(
        'should get a random meal',
        () async {
          final mealsDao = MockMealsDao();
          final mealDbApiClient = MockMealDbApiClient();
          final repository = MealsRepository(
            mealsDao: mealsDao,
            mealDbApiClient: mealDbApiClient,
          );

          when(
            () => mealsDao.saveMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          ).thenAnswer((_) async {});

          when(
            mealDbApiClient.fetchRandomMeal,
          ).thenAnswer(
            (_) async => api.Meal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          );

          expect(
            await repository.getRandomMeal(),
            Meal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          );

          verify(mealDbApiClient.fetchRandomMeal).called(1);
          verify(
            () => mealsDao.saveMeal(
              idMeal: 'TEST_ID',
              strMeal: '',
              strInstructions: '',
              strMealThumb: '',
            ),
          ).called(1);
          verifyNoMoreInteractions(mealsDao);
          verifyNoMoreInteractions(mealDbApiClient);
        },
      );
    });
  });
}
