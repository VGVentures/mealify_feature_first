import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:meals_data/meals_data.dart';
import 'package:test/test.dart';

void main() {
  group('$MealsDatabase', () {
    test('should not find a meal that has not been inserted', () async {
      final db = MealsDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );

      expect(await db.getMeal('TEST_ID'), isNull);

      await db.close();
    });

    test('should insert and query a meal into the datbase', () async {
      final db = MealsDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );

      await db.saveMeal(
        idMeal: 'TEST_ID',
        strMeal: '',
        strInstructions: '',
        strMealThumb: '',
      );

      expect(
        await db.getMeal('TEST_ID'),
        const DbMeal(
          idMeal: 'TEST_ID',
          strMeal: '',
          strInstructions: '',
          strMealThumb: '',
        ),
      );

      await db.close();
    });

    test('should insert and query multiple meals', () async {
      final db = MealsDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );

      await db.saveMeal(
        idMeal: 'TEST_ID_1',
        strMeal: '',
        strInstructions: '',
        strMealThumb: '',
      );
      await db.saveMeal(
        idMeal: 'TEST_ID_2',
        strMeal: '',
        strInstructions: '',
        strMealThumb: '',
      );

      expect(
        await db.getMeal('TEST_ID_1'),
        const DbMeal(
          idMeal: 'TEST_ID_1',
          strMeal: '',
          strInstructions: '',
          strMealThumb: '',
        ),
      );
      expect(
        await db.getMeal('TEST_ID_2'),
        const DbMeal(
          idMeal: 'TEST_ID_2',
          strMeal: '',
          strInstructions: '',
          strMealThumb: '',
        ),
      );

      await db.close();
    });
  });
}
