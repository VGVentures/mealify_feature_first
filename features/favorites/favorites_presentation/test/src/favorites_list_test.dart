import 'package:favorites_presentation/favorites_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FavoritesList', () {
    test('can be instantiated', () {
      expect(FavoritesListModule(onFavoriteTapped: (favorite) {}), isNotNull);
    });
  });
}
