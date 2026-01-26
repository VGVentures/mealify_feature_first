import 'package:flutter_test/flutter_test.dart';
import 'package:ideas_presentation/ideas_presentation.dart';

void main() {
  group('IdeasModule', () {
    test('can be instantiated', () {
      expect(
        IdeasModule(onDrinkTapped: (_) {}, onMealTapped: (_) {}),
        isNotNull,
      );
    });
  });
}
