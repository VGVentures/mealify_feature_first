import 'package:flutter_test/flutter_test.dart';
import 'package:meal_details/meal_details.dart';
import 'package:mocktail/mocktail.dart';

class _MockMealDetailsComponent extends Mock implements MealDetailsComponent {}

void main() {
  group('MealDetailsBuilder', () {
    test('can be instantiated', () {
      expect(
        MealDetailsBuilder(
          component: _MockMealDetailsComponent(),
          mealId: 'Test',
        ),
        isNotNull,
      );
    });
  });
}
