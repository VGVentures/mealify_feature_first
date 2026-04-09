import 'package:bloc_test/bloc_test.dart';
import 'package:favorite/favorite.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFavoritesRepository extends Mock implements IFavoritesRepository {}

void main() {
  group('$FavoriteInteractor', () {
    late _MockFavoritesRepository favoritesRepository;

    setUp(() {
      favoritesRepository = _MockFavoritesRepository();
    });

    test('starts in a loading state', () {
      final interactor = FavoriteInteractor(
        favoritesRepository: favoritesRepository,
      );

      expect(interactor.state, const FavoriteLoading());
    });

    blocTest<FavoriteInteractor, FavoriteState>(
      'emits Loading -> Success when favorite loads successfully',
      setUp: () {
        when(
          () => favoritesRepository.getFavoriteById('FID'),
        ).thenAnswer(
          (_) async => Favorite(
            id: 'FID',
            mealId: 'MID',
            drinkId: 'DID',
            createdAt: DateTime(2026),
          ),
        );
      },
      build: () => FavoriteInteractor(
        favoritesRepository: favoritesRepository,
      ),
      act: (interactor) => interactor.loadFavorite('FID'),
      expect: () => [
        const FavoriteLoading(),
        FavoriteSuccess(
          favorite: Favorite(
            id: 'FID',
            mealId: 'MID',
            drinkId: 'DID',
            createdAt: DateTime(2026),
          ),
        ),
      ],
      verify: (_) {
        verify(() => favoritesRepository.getFavoriteById('FID')).called(1);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );

    blocTest<FavoriteInteractor, FavoriteState>(
      'emits Loading -> NotFound when favorite is null',
      setUp: () {
        when(
          () => favoritesRepository.getFavoriteById('FID'),
        ).thenAnswer((_) async => null);
      },
      build: () => FavoriteInteractor(
        favoritesRepository: favoritesRepository,
      ),
      act: (interactor) => interactor.loadFavorite('FID'),
      expect: () => [
        const FavoriteLoading(),
        const FavoriteNotFound(),
      ],
      verify: (_) {
        verify(() => favoritesRepository.getFavoriteById('FID')).called(1);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );

    blocTest<FavoriteInteractor, FavoriteState>(
      'emits Loading -> Error when favorite fails to load',
      setUp: () {
        when(
          () => favoritesRepository.getFavoriteById('FID'),
        ).thenThrow(const _TestException());
      },
      build: () => FavoriteInteractor(
        favoritesRepository: favoritesRepository,
      ),
      act: (interactor) => interactor.loadFavorite('FID'),
      expect: () => [
        const FavoriteLoading(),
        const FavoriteError(_TestException()),
      ],
      verify: (_) {
        verify(() => favoritesRepository.getFavoriteById('FID')).called(1);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );
  });
}

@immutable
class _TestException implements Exception {
  const _TestException();

  @override
  bool operator ==(Object other) => other is _TestException;

  @override
  int get hashCode => 0;
}
