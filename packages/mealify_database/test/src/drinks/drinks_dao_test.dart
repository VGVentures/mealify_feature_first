import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_database/mealify_database.dart';
import 'package:mealify_database/src/drinks/drinks_dao.dart';

void main() {
  group('$DrinksDao', () {
    test('should not find a drink that has not been inserted', () async {
      final db = MealifyDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final dao = DrinksDao(db);

      expect(await dao.getDrink('TEST_ID'), isNull);

      await db.close();
    });

    test('should insert and query a drink into the datbase', () async {
      final db = MealifyDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final dao = DrinksDao(db);

      await dao.saveDrink(const DrinksCompanion(idDrink: Value('TEST_ID')));

      expect(await dao.getDrink('TEST_ID'), const Drink(idDrink: 'TEST_ID'));

      await db.close();
    });

    test('should insert and query multiple drinks', () async {
      final db = MealifyDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final dao = DrinksDao(db);

      await dao.saveDrink(const DrinksCompanion(idDrink: Value('TEST_ID_1')));
      await dao.saveDrink(const DrinksCompanion(idDrink: Value('TEST_ID_2')));

      expect(
        await dao.getDrink('TEST_ID_1'),
        const Drink(idDrink: 'TEST_ID_1'),
      );
      expect(
        await dao.getDrink('TEST_ID_2'),
        const Drink(idDrink: 'TEST_ID_2'),
      );

      await db.close();
    });
  });
}
