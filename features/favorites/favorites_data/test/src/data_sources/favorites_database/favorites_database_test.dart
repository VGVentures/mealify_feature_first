import 'package:clock/clock.dart';
import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:favorites_data/favorites_data.dart';
import 'package:test/test.dart';

void main() {
  group('$FavoritesDatabase', () {
    test('should not find any favorites if none have been inserted', () async {
      final db = FavoritesDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );

      await expectLater(db.watchAllIds(), emits([]));

      await db.close();
    });

    test('should insert and return one favorite', () async {
      final db = FavoritesDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final fixedDate = DateTime(2025, 1, 1, 12);

      await withClock(Clock.fixed(fixedDate), () async {
        await db.addFavorite(
          id: '1',
          mealId: 'MEAL_ID_1',
          drinkId: 'DRINK_ID_1',
        );

        expect(
          await db.getFavorite('1'),
          DbFavorite(
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
      final db = FavoritesDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final fixedDate = DateTime(2025, 1, 1, 12);

      await withClock(Clock.fixed(fixedDate), () async {
        await db.addFavorite(
          id: '1',
          mealId: 'MEAL_ID_1',
          drinkId: 'DRINK_ID_1',
        );

        expect(
          await db.getFavorite('1'),
          DbFavorite(
            id: '1',
            mealId: 'MEAL_ID_1',
            drinkId: 'DRINK_ID_1',
            createdAt: fixedDate,
          ),
        );

        await db.deleteFavoriteById('1');

        expect(await db.getFavorite('1'), isNull);

        await db.close();
      });
    });

    test('should insert and return all favorites', () async {
      final db = FavoritesDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final fixedDate = DateTime(2025, 1, 1, 12);

      await withClock(Clock.fixed(fixedDate), () async {
        await db.addFavorite(
          id: '1',
          mealId: 'MEAL_ID_1',
          drinkId: 'DRINK_ID_1',
        );
        await db.addFavorite(
          id: '2',
          mealId: 'MEAL_ID_2',
          drinkId: 'DRINK_ID_2',
        );

        await expectLater(
          db.watchAllIds(),
          emits(['1', '2']),
        );

        await db.close();
      });
    });

    test('should watch if a meal + drink combo is a favorite', () async {
      final db = FavoritesDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final fixedDate = DateTime(2025, 1, 1, 12);

      await withClock(Clock.fixed(fixedDate), () async {
        await expectLater(
          db.watchIsFavorite('MEAL_ID_1', 'DRINK_ID_1'),
          emits(false),
        );

        await db.addFavorite(
          id: '1',
          mealId: 'MEAL_ID_1',
          drinkId: 'DRINK_ID_1',
        );

        await expectLater(
          db.watchIsFavorite('MEAL_ID_1', 'DRINK_ID_1'),
          emits(true),
        );

        await db.close();
      });
    });
  });
}
