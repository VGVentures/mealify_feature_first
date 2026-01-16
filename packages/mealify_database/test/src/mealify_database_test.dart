import 'package:drift/drift.dart' hide isNotNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_database/mealify_database.dart';

void main() {
  group('MealifyDatabase', () {
    test('can be instantiated', () {
      expect(
        MealifyDatabase(
          queryExecutor: DatabaseConnection(NativeDatabase.memory()),
        ),
        isNotNull,
      );
    });
  });
}
