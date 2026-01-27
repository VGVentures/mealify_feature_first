import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:drinks_data/drinks_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$DrinksDatabase', () {
    test('should not find a drink that has not been inserted', () async {
      final db = DrinksDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );

      expect(await db.getDrink('TEST_ID'), isNull);

      await db.close();
    });

    test('should insert and query a drink into the datbase', () async {
      final db = DrinksDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );

      await db.saveDrink(
        idDrink: 'TEST_ID',
        strDrink: '',
        strInstructions: '',
        strDrinkThumb: '',
      );

      expect(
        await db.getDrink('TEST_ID'),
        const DbDrink(
          idDrink: 'TEST_ID',
          strDrink: '',
          strInstructions: '',
          strDrinkThumb: '',
        ),
      );

      await db.close();
    });

    test('should insert and query multiple drinks', () async {
      final db = DrinksDatabase(
        queryExecutor: DatabaseConnection(
          NativeDatabase.memory(),
          closeStreamsSynchronously: true,
        ),
      );

      await db.saveDrink(
        idDrink: 'TEST_ID_1',
        strDrink: '',
        strInstructions: '',
        strDrinkThumb: '',
      );
      await db.saveDrink(
        idDrink: 'TEST_ID_2',
        strDrink: '',
        strInstructions: '',
        strDrinkThumb: '',
      );

      expect(
        await db.getDrink('TEST_ID_1'),
        const DbDrink(
          idDrink: 'TEST_ID_1',
          strDrink: '',
          strInstructions: '',
          strDrinkThumb: '',
        ),
      );
      expect(
        await db.getDrink('TEST_ID_2'),
        const DbDrink(
          idDrink: 'TEST_ID_2',
          strDrink: '',
          strInstructions: '',
          strDrinkThumb: '',
        ),
      );

      await db.close();
    });
  });
}
