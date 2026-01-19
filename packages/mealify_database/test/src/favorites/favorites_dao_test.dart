import 'package:clock/clock.dart';
import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_database/mealify_database.dart';

void main() {
  group('$FavoritesDao', () {
    test('should not find any favorites if none have been inserted', () async {
      final db = MealifyDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final dao = FavoritesDao(db);

      expect(dao.watchAll(), isEmpty);

      await db.close();
    });

    test('should insert and return one favorite', () async {
      final db = MealifyDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final dao = FavoritesDao(db);
      final fixedDate = DateTime(2025, 1, 1, 12);

      await withClock(Clock.fixed(fixedDate), () async {
        await dao.addFavorite(
          id: '1',
          mealId: 'MEAL_ID_1',
          drinkId: 'DRINK_ID_1',
        );

        expect(
          await dao.getFavorite('1'),
          Favorite(
            id: '1',
            mealId: 'MEAL_ID_1',
            drinkId: 'DRINK_ID_1',
            createdAt: fixedDate,
          ),
        );

        await db.close();
      });
    });

    test('should be able to remove a favorite', () async {
      final db = MealifyDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final dao = FavoritesDao(db);
      final fixedDate = DateTime(2025, 1, 1, 12);

      await withClock(Clock.fixed(fixedDate), () async {
        await dao.addFavorite(
          id: '1',
          mealId: 'MEAL_ID_1',
          drinkId: 'DRINK_ID_1',
        );

        expect(
          await dao.getFavorite('1'),
          Favorite(
            id: '1',
            mealId: 'MEAL_ID_1',
            drinkId: 'DRINK_ID_1',
            createdAt: fixedDate,
          ),
        );

        await dao.deleteFavorite('1');

        expect(await dao.getFavorite('1'), isNull);

        await db.close();
      });
    });

    test('should insert and return all favorites', () async {
      final db = MealifyDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final dao = FavoritesDao(db);
      final fixedDate = DateTime(2025, 1, 1, 12);

      await withClock(Clock.fixed(fixedDate), () async {
        await dao.addFavorite(
          id: '1',
          mealId: 'MEAL_ID_1',
          drinkId: 'DRINK_ID_1',
        );
        await dao.addFavorite(
          id: '2',
          mealId: 'MEAL_ID_2',
          drinkId: 'DRINK_ID_2',
        );

        expect(dao.watchAll(), [
          Favorite(
            id: '1',
            mealId: 'MEAL_ID_1',
            drinkId: 'DRINK_ID_1',
            createdAt: fixedDate,
          ),
          Favorite(
            id: '2',
            mealId: 'MEAL_ID_2',
            drinkId: 'DRINK_ID_2',
            createdAt: fixedDate,
          ),
        ]);

        await db.close();
      });
    });
  });
}
