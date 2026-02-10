import 'package:drinks_domain/drinks_domain.dart';
import 'package:drinks_presentation/drinks_presentation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDrinksRepository extends Mock implements IDrinksRepository {}

void main() {
  group('DrinksModule', () {
    test('can be instantiated', () {
      expect(
        DrinkDetailsModule(
          drinksRepository: MockDrinksRepository(),
          drinkId: 'Test',
        ),
        isNotNull,
      );
    });
  });
}
