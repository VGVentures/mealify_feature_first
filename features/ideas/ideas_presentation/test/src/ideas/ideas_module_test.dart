import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ideas_presentation/ideas_presentation.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:mocktail/mocktail.dart';

class MockDrinksRepository extends Mock implements IDrinksRepository {}

class MockMealsRepository extends Mock implements IMealsRepository {}

class MockFavoritesRepository extends Mock implements IFavoritesRepository {}

void main() {
  group('IdeasModule', () {
    test('can be instantiated', () {
      expect(
        IdeasModule(
          drinksRepository: MockDrinksRepository(),
          mealsRepository: MockMealsRepository(),
          favoritesRepository: MockFavoritesRepository(),
          onDrinkTapped: (_) {},
          onMealTapped: (_) {},
        ),
        isNotNull,
      );
    });
  });
}
