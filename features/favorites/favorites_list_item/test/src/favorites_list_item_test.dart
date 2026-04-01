import 'package:favorites_list_item/favorites_list_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFavoritesListItemComponent extends Mock
    implements FavoritesListItemComponent {}

void main() {
  group('FavoritesListItemBuilder', () {
    test('can be instantiated', () {
      expect(
        FavoritesListItemBuilder(
          key: const Key('test'),
          component: _MockFavoritesListItemComponent(),
          listener: FavoritesListItemListener(
            onFavoriteTapped: (_) {},
          ),
          favoriteId: 'test-id',
        ),
        isNotNull,
      );
    });
  });
}
