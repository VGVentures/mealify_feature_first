import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_list/favorites_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFavoritesRepository extends Mock implements IFavoritesRepository {}

void main() {
  group('$FavoritesListInteractor', () {
    late _MockFavoritesRepository favoritesRepository;
    late StreamController<List<String>> favoriteIdsController;

    setUp(() {
      favoritesRepository = _MockFavoritesRepository();
      favoriteIdsController = StreamController();
    });

    test('starts in a loading state', () {
      final interactor = FavoritesListInteractor(
        favoritesRepository: favoritesRepository,
      );

      expect(interactor.state, const FavoritesListLoading());
    });

    blocTest<FavoritesListInteractor, FavoritesListState>(
      'emits Success when watchAllFavoriteIds emits data',
      setUp: () {
        when(
          favoritesRepository.watchAllFavoriteIds,
        ).thenAnswer((_) => favoriteIdsController.stream);
      },
      build: () => FavoritesListInteractor(
        favoritesRepository: favoritesRepository,
      ),
      act: (interactor) {
        interactor.watchFavoriteIds();
        favoriteIdsController.add(['fav1', 'fav2']);
      },
      expect: () => [
        isA<FavoritesListSuccess>().having(
          (s) => s.favorites,
          'favorites',
          ['fav1', 'fav2'],
        ),
      ],
      verify: (_) {
        verify(favoritesRepository.watchAllFavoriteIds).called(1);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );

    blocTest<FavoritesListInteractor, FavoritesListState>(
      'emits Error when watchAllFavoriteIds emits an error',
      setUp: () {
        when(
          favoritesRepository.watchAllFavoriteIds,
        ).thenAnswer((_) => Stream.error(const _TestException()));
      },
      build: () => FavoritesListInteractor(
        favoritesRepository: favoritesRepository,
      ),
      act: (interactor) => interactor.watchFavoriteIds(),
      expect: () => [
        isA<FavoritesListError>(),
      ],
      verify: (_) {
        verify(favoritesRepository.watchAllFavoriteIds).called(1);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );
  });
}

class _TestException implements Exception {
  const _TestException();
}
