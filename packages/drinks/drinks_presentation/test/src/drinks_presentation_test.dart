// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:drinks_presentation/drinks_presentation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DrinksModule', () {
    test('can be instantiated', () {
      expect(DrinkDetailsModule(drinkId: 'Test'), isNotNull);
    });
  });
}
