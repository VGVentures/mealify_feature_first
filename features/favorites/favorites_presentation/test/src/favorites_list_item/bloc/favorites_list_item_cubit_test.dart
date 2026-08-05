import 'dart:async';

import 'package:favorites_presentation/src/favorites_list_item/bloc/favorites_list_item_cubit.dart';
import 'package:favorites_presentation/src/favorites_list_item/bloc/favorites_list_item_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/favorite_fixtures.dart';
import '../../../helpers/mocks.dart';

void main() {
  group('FavoritesListItemCubit', () {
    late MockFavoritesRepository favoritesRepository;
    late MockGetFavoriteQuery getFavoriteQuery;

    setUp(() {
      favoritesRepository = MockFavoritesRepository();
      getFavoriteQuery = MockGetFavoriteQuery();
    });

    FavoritesListItemCubit buildCubit() => FavoritesListItemCubit(
      favoritesRepository: favoritesRepository,
      getFavoriteQuery: getFavoriteQuery,
    );

    // `testWidgets` runs in a fake-async zone, so no wall-clock time passes
    // across a zero-duration `pump`. A timer inside `loadFavorite` therefore
    // never fires here, and this reaching Success is what proves there is no
    // timer left to wait on rather than that waiting was quick.
    testWidgets('loads a favorite without waiting on a timer', (tester) async {
      when(() => getFavoriteQuery.get('1')).thenAnswer(
        (_) async => favoriteFixture('1'),
      );
      final cubit = buildCubit();
      addTearDown(cubit.close);

      unawaited(cubit.loadFavorite('1'));
      await tester.pump();

      expect(
        cubit.state,
        FavoritesListItemSuccess(favorite: favoriteFixture('1')),
      );
    });

    testWidgets('emits Error when the query throws', (tester) async {
      final failure = Exception('nope');
      when(() => getFavoriteQuery.get('1')).thenThrow(failure);
      final cubit = buildCubit();
      addTearDown(cubit.close);

      unawaited(cubit.loadFavorite('1'));
      await tester.pump();

      expect(cubit.state, FavoritesListItemError(failure));
    });

    test('removeFavorite delegates to the repository', () async {
      when(() => favoritesRepository.removeFavorite('1')).thenAnswer(
        (_) async {},
      );
      final cubit = buildCubit();
      addTearDown(cubit.close);

      await cubit.removeFavorite('1');

      verify(() => favoritesRepository.removeFavorite('1')).called(1);
    });
  });
}
