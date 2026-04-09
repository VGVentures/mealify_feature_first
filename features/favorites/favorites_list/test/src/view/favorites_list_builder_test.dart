import 'package:favorites_list/favorites_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFavoritesListComponent extends Mock
    implements FavoritesListComponent {}

void main() {
  group('FavoritesListBuilder', () {
    test('can be instantiated', () {
      expect(
        FavoritesListBuilder(
          component: _MockFavoritesListComponent(),
          listener: FavoritesListItemListener(
            onFavoriteTapped: (_) {},
            onFavoriteRemoved: (_) {},
          ),
        ),
        isNotNull,
      );
    });
  });
}
