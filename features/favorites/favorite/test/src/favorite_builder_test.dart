import 'dart:async';

import 'package:favorite/favorite.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFavoriteComponent extends Mock implements FavoriteComponent {}

class _MockFavoritesRepository extends Mock implements IFavoritesRepository {}

void main() {
  group('FavoriteBuilder', () {
    late _MockFavoriteComponent component;
    late _MockFavoritesRepository favoritesRepository;

    setUp(() {
      component = _MockFavoriteComponent();
      favoritesRepository = _MockFavoritesRepository();
      when(() => component.favoritesRepository).thenReturn(favoritesRepository);
    });

    test('can be instantiated', () {
      expect(
        FavoriteBuilder(
          component: component,
          favoriteId: 'FID',
          builder: (context, state) => const SizedBox(),
        ),
        isNotNull,
      );
    });

    testWidgets('renders loading state initially', (tester) async {
      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer((_) => Completer<Favorite?>().future);

      late FavoriteState capturedState;

      await tester.pumpWidget(
        MaterialApp(
          home: FavoriteBuilder(
            component: component,
            favoriteId: 'FID',
            builder: (context, state) {
              capturedState = state;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(capturedState, const FavoriteLoading());
    });

    testWidgets('renders success state when favorite loads', (tester) async {
      final favorite = Favorite(
        id: 'FID',
        mealId: 'MID',
        drinkId: 'DID',
        createdAt: DateTime(2026),
      );

      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer((_) async => favorite);

      late FavoriteState capturedState;

      await tester.pumpWidget(
        MaterialApp(
          home: FavoriteBuilder(
            component: component,
            favoriteId: 'FID',
            builder: (context, state) {
              capturedState = state;
              return const SizedBox();
            },
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(capturedState, FavoriteSuccess(favorite: favorite));
    });

    testWidgets('renders not found state when favorite is null', (
      tester,
    ) async {
      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer((_) async => null);

      late FavoriteState capturedState;

      await tester.pumpWidget(
        MaterialApp(
          home: FavoriteBuilder(
            component: component,
            favoriteId: 'FID',
            builder: (context, state) {
              capturedState = state;
              return const SizedBox();
            },
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(capturedState, const FavoriteNotFound());
    });

    testWidgets('renders error state when favorite fails to load', (
      tester,
    ) async {
      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenThrow(Exception('fail'));

      late FavoriteState capturedState;

      await tester.pumpWidget(
        MaterialApp(
          home: FavoriteBuilder(
            component: component,
            favoriteId: 'FID',
            builder: (context, state) {
              capturedState = state;
              return const SizedBox();
            },
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(capturedState, isA<FavoriteError>());
      expect((capturedState as FavoriteError).error, isA<Exception>());
    });
  });
}
