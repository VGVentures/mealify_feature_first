import 'package:favorite_details/favorite_details.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFavoriteDetailsComponent extends Mock
    implements FavoriteDetailsComponent {}

void main() {
  group('FavoriteDetailsBuilder', () {
    test('can be instantiated', () {
      expect(
        FavoriteDetailsBuilder(
          component: _MockFavoriteDetailsComponent(),
          id: 'Test',
        ),
        isNotNull,
      );
    });
  });
}
