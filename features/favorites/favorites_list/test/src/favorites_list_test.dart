import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_list/favorites_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meals_domain/meals_domain.dart';

void main() {
  group('FavoritesListBuilder', () {
    test('can be instantiated', () {
      expect(
        FavoritesListBuilder(
          component: FavoritesListComponent(
            favoritesRepository: _FakeFavoritesRepository(),
            mealsRepository: _FakeMealsRepository(),
            drinksRepository: _FakeDrinksRepository(),
          ),
          listener: FavoritesListItemListener(
            onFavoriteTapped: (_) {},
          ),
        ),
        isNotNull,
      );
    });
  });
}

// Minimal fakes — these are only used for instantiation, not behavior.
class _FakeFavoritesRepository extends Fake implements IFavoritesRepository {}

class _FakeMealsRepository extends Fake implements IMealsRepository {}

class _FakeDrinksRepository extends Fake implements IDrinksRepository {}
