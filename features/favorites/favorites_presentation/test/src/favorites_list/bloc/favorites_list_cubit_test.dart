import 'dart:async';

import 'package:favorites_presentation/src/favorites_list/bloc/favorites_list_cubit.dart';
import 'package:favorites_presentation/src/favorites_list/bloc/favorites_list_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/mocks.dart';

void main() {
  group('FavoritesListCubit', () {
    late MockFavoritesRepository favoritesRepository;
    late StreamController<List<String>> favoriteIds;

    setUp(() {
      favoritesRepository = MockFavoritesRepository();
      favoriteIds = StreamController<List<String>>();
      when(favoritesRepository.watchAllFavoriteIds).thenAnswer(
        (_) => favoriteIds.stream,
      );
    });

    tearDown(() => favoriteIds.close());

    test('emits once when the same ids arrive twice', () async {
      final cubit = FavoritesListCubit(
        favoritesRepository: favoritesRepository,
      );
      addTearDown(cubit.close);
      final states = <FavoritesListState>[];
      cubit.stream.listen(states.add);

      cubit.watchFavoriteIds();
      favoriteIds
        ..add(['1', '2'])
        ..add(['1', '2']);
      await pumpEventQueue();

      expect(states, [
        const FavoritesListSuccess(favorites: ['1', '2']),
      ]);
    });

    test('emits again when the ids change', () async {
      final cubit = FavoritesListCubit(
        favoritesRepository: favoritesRepository,
      );
      addTearDown(cubit.close);
      final states = <FavoritesListState>[];
      cubit.stream.listen(states.add);

      cubit.watchFavoriteIds();
      favoriteIds
        ..add(['1', '2'])
        ..add(['1']);
      await pumpEventQueue();

      expect(states, [
        const FavoritesListSuccess(favorites: ['1', '2']),
        const FavoritesListSuccess(favorites: ['1']),
      ]);
    });

    test('emits an error when the stream fails', () async {
      final failure = Exception('db gone');
      final cubit = FavoritesListCubit(
        favoritesRepository: favoritesRepository,
      );
      addTearDown(cubit.close);
      final states = <FavoritesListState>[];
      cubit.stream.listen(states.add);

      cubit.watchFavoriteIds();
      favoriteIds.addError(failure);
      await pumpEventQueue();

      expect(states, [FavoritesListError(failure)]);
    });
  });
}
