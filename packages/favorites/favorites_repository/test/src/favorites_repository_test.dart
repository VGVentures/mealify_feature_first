import 'dart:async';

import 'package:favorites_database/favorites_database.dart' as db;
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_repository/favorites_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFavoritesDatabase extends Mock implements db.FavoritesDatabase {}

void main() {
  group('$FavoritesRepository', () {
    test('saves a favorite to the database', () {
      final favoritesDb = MockFavoritesDatabase();
      final repository = FavoritesRepository(favoritesDb: favoritesDb);

      when(
        () => favoritesDb.addFavorite(mealId: 'MEAL_ID', drinkId: 'DRINK_ID'),
      ).thenAnswer((_) async {});

      expect(
        repository.addFavorite(mealId: 'MEAL_ID', drinkId: 'DRINK_ID'),
        completes,
      );

      verify(
        () => favoritesDb.addFavorite(mealId: 'MEAL_ID', drinkId: 'DRINK_ID'),
      ).called(1);
      verifyNoMoreInteractions(favoritesDb);
    });

    test('removes a favorite from the database', () {
      final favoritesDb = MockFavoritesDatabase();
      final repository = FavoritesRepository(favoritesDb: favoritesDb);

      when(
        () => favoritesDb.removeFavorite('FAVORITE_ID'),
      ).thenAnswer((_) async {});

      expect(
        repository.removeFavorite('FAVORITE_ID'),
        completes,
      );

      verify(
        () => favoritesDb.removeFavorite('FAVORITE_ID'),
      ).called(1);
      verifyNoMoreInteractions(favoritesDb);
    });

    test('gets a favorite by id', () async {
      final favoritesDb = MockFavoritesDatabase();
      final repository = FavoritesRepository(favoritesDb: favoritesDb);

      when(
        () => favoritesDb.getFavorite('FAVORITE_ID'),
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
        RawFavorite(
          id: 'FAVORITE_ID',
          mealId: 'MEAL_ID',
          drinkId: 'DRINK_ID',
          createdAt: DateTime(2026),
        ),
      );

      verify(
        () => favoritesDb.getFavorite('FAVORITE_ID'),
      ).called(1);
      verifyNoMoreInteractions(favoritesDb);
    });

    test('gets a stream of favorites', () async {
      final favoritesDb = MockFavoritesDatabase();
      final repository = FavoritesRepository(favoritesDb: favoritesDb);

      when(
        favoritesDb.watchAll,
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
            RawFavorite(
              id: 'FAVORITE_ID',
              mealId: 'MEAL_ID',
              drinkId: 'DRINK_ID',
              createdAt: DateTime(2026),
            ),
          ],
        ),
      );

      verify(
        favoritesDb.watchAll,
      ).called(1);
      verifyNoMoreInteractions(favoritesDb);
    });

    test('watches if a meal + drink combo is a favorite', () async {
      final favoritesDb = MockFavoritesDatabase();
      final repository = FavoritesRepository(favoritesDb: favoritesDb);

      when(
        () => favoritesDb.watchIsFavorite('MEAL_ID', 'DRINK_ID'),
      ).thenAnswer((_) => Stream.value(true));

      expect(
        repository.watchIsFavorite(mealId: 'MEAL_ID', drinkId: 'DRINK_ID'),
        emits(true),
      );

      verify(
        () => favoritesDb.watchIsFavorite('MEAL_ID', 'DRINK_ID'),
      ).called(1);
      verifyNoMoreInteractions(favoritesDb);
    });
  });
}
