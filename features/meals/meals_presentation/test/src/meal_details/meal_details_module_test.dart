import 'package:flutter_test/flutter_test.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:meals_presentation/meals_presentation.dart';
import 'package:mocktail/mocktail.dart';

class MockMealsRepository extends Mock implements IMealsRepository {}

void main() {
  group('MealDetailsModule', () {
    test('can be instantiated', () {
      expect(
        MealDetailsModule(
          mealsRepository: MockMealsRepository(),
          mealId: 'MEAL_ID',
        ),
        isNotNull,
      );
    });
  });
}
