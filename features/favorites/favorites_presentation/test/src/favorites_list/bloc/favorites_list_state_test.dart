import 'package:favorites_presentation/src/favorites_list/bloc/favorites_list_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FavoritesListState', () {
    // `Cubit.emit` drops a state equal to the current one, so this equality is
    // what stops an unrelated write to the favorites table from rebuilding the
    // screen. Dart's `List` does not override `==`, so comparing the lists
    // directly would make every emission a distinct state.
    test('two successes with equal but distinct lists are equal', () {
      // Built at runtime on purpose: const literals are canonicalised to one
      // instance, which would make `isNot(same(...))` below fail and stop this
      // proving that equality is by value.
      final first = FavoritesListSuccess(favorites: List.of(['1', '2']));
      final second = FavoritesListSuccess(favorites: List.of(['1', '2']));

      expect(first.favorites, isNot(same(second.favorites)));
      expect(first, second);
      expect(first.hashCode, second.hashCode);
    });

    test('successes with different lists are not equal', () {
      expect(
        const FavoritesListSuccess(favorites: ['1', '2']),
        isNot(const FavoritesListSuccess(favorites: ['2', '1'])),
      );
      expect(
        const FavoritesListSuccess(favorites: ['1']),
        isNot(const FavoritesListSuccess(favorites: ['1', '2'])),
      );
    });
  });
}
