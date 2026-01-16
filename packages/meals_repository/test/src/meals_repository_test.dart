// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:meals_repository/meals_repository.dart';

void main() {
  group('MealsRepository', () {
    test('can be instantiated', () {
      expect(MealsRepository(), isNotNull);
    });
  });
}
