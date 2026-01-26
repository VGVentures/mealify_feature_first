// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:meals_presentation/meals_presentation.dart';

void main() {
  group('MealDetailsModule', () {
    test('can be instantiated', () {
      expect(MealDetailsModule(mealId: 'MEAL_ID'), isNotNull);
    });
  });
}
