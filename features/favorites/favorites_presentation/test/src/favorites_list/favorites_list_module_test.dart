import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_presentation/favorites_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/mocks.dart';

class MockMealsRepository extends Mock implements IMealsRepository {}

class MockDrinksRepository extends Mock implements IDrinksRepository {}

void main() {
  group('FavoritesList', () {
    test('can be instantiated', () {
      expect(
        FavoritesListModule(
          favoritesRepository: MockFavoritesRepository(),
          mealsRepository: MockMealsRepository(),
          drinksRepository: MockDrinksRepository(),
          onFavoriteTapped: (favorite) {},
        ),
        isNotNull,
      );
    });
  });
}
