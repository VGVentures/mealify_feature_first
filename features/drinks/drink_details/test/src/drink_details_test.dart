import 'package:drink_details/drink_details.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDrinkDetailsComponent extends Mock
    implements DrinkDetailsComponent {}

void main() {
  group('DrinkDetailsBuilder', () {
    test('can be instantiated', () {
      expect(
        DrinkDetailsBuilder(
          component: _MockDrinkDetailsComponent(),
          drinkId: 'Test',
        ),
        isNotNull,
      );
    });
  });
}
