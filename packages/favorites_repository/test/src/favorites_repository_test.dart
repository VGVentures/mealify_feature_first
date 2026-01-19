import 'dart:async';

import 'package:favorites_repository/favorites_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_database/mealify_database.dart' as db;
import 'package:mocktail/mocktail.dart';

class MockFavoritesDao extends Mock implements db.FavoritesDao {}

void main() {
  group('$FavoritesRepository', () {
    test('saves a favorite to the database', () {
      final favoritesDao = MockFavoritesDao();
      final repository = FavoritesRepository(favoritesDao: favoritesDao);

      when(
        () => favoritesDao.addFavorite(mealId: 'MEAL_ID', drinkId: 'DRINK_ID'),
      ).thenAnswer((_) async {});

      expect(
        repository.addFavorite(mealId: 'MEAL_ID', drinkId: 'DRINK_ID'),
        completes,
      );

      verify(
        () => favoritesDao.addFavorite(mealId: 'MEAL_ID', drinkId: 'DRINK_ID'),
      ).called(1);
      verifyNoMoreInteractions(favoritesDao);
    });

    test('removes a favorite from the database', () {
      final favoritesDao = MockFavoritesDao();
      final repository = FavoritesRepository(favoritesDao: favoritesDao);

      when(
        () => favoritesDao.removeFavorite('FAVORITE_ID'),
      ).thenAnswer((_) async {});

      expect(
        repository.removeFavorite('FAVORITE_ID'),
        completes,
      );

      verify(
        () => favoritesDao.removeFavorite('FAVORITE_ID'),
      ).called(1);
      verifyNoMoreInteractions(favoritesDao);
    });

    test('gets a favorite by id', () async {
      final favoritesDao = MockFavoritesDao();
      final repository = FavoritesRepository(favoritesDao: favoritesDao);

      when(
        () => favoritesDao.getFavorite('FAVORITE_ID'),
      ).thenAnswer(
        (_) async => db.Favorite(
          id: 'FAVORITE_ID',
          mealId: 'MEAL_ID',
          drinkId: 'DRINK_ID',
          createdAt: DateTime(2026),
        ),
      );

      expect(
        await repository.getFavoriteById('FAVORITE_ID'),
        Favorite(
          id: 'FAVORITE_ID',
          mealId: 'MEAL_ID',
          drinkId: 'DRINK_ID',
          createdAt: DateTime(2026),
        ),
      );

      verify(
        () => favoritesDao.getFavorite('FAVORITE_ID'),
      ).called(1);
      verifyNoMoreInteractions(favoritesDao);
    });

    test('gets a stream of favorites', () async {
      final favoritesDao = MockFavoritesDao();
      final repository = FavoritesRepository(favoritesDao: favoritesDao);

      when(
        favoritesDao.watchAll,
      ).thenAnswer(
        (_) => Stream.value([
          db.Favorite(
            id: 'FAVORITE_ID',
            mealId: 'MEAL_ID',
            drinkId: 'DRINK_ID',
            createdAt: DateTime(2026),
          ),
        ]),
      );

      expect(
        repository.watchAllFavorites(),
        emits(
          [
            Favorite(
              id: 'FAVORITE_ID',
              mealId: 'MEAL_ID',
              drinkId: 'DRINK_ID',
              createdAt: DateTime(2026),
            ),
          ],
        ),
      );

      verify(
        favoritesDao.watchAll,
      ).called(1);
      verifyNoMoreInteractions(favoritesDao);
    });
  });
}
