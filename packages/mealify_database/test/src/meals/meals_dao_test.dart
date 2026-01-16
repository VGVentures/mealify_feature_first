import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_database/mealify_database.dart';
import 'package:mealify_database/src/meals/meals_dao.dart';

void main() {
  group('$MealsDao', () {
    test('should not find a meal that has not been inserted', () async {
      final db = MealifyDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final dao = MealsDao(db);

      expect(await dao.getMeal('TEST_ID'), isNull);

      await db.close();
    });

    test('should insert and query a meal into the datbase', () async {
      final db = MealifyDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final dao = MealsDao(db);

      await dao.saveMeal(const MealsCompanion(idMeal: Value('TEST_ID')));

      expect(await dao.getMeal('TEST_ID'), const Meal(idMeal: 'TEST_ID'));

      await db.close();
    });

    test('should insert and query multiple meals', () async {
      final db = MealifyDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );
      final dao = MealsDao(db);

      await dao.saveMeal(const MealsCompanion(idMeal: Value('TEST_ID_1')));
      await dao.saveMeal(const MealsCompanion(idMeal: Value('TEST_ID_2')));

      expect(
        await dao.getMeal('TEST_ID_1'),
        const Meal(idMeal: 'TEST_ID_1'),
      );
      expect(
        await dao.getMeal('TEST_ID_2'),
        const Meal(idMeal: 'TEST_ID_2'),
      );

      await db.close();
    });
  });
}
