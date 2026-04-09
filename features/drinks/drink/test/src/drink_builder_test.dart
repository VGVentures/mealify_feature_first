import 'dart:async';

import 'package:drink/drink.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDrinkComponent extends Mock implements DrinkComponent {}

class _MockDrinksRepository extends Mock implements IDrinksRepository {}

void main() {
  group('DrinkBuilder', () {
    late _MockDrinkComponent component;
    late _MockDrinksRepository drinksRepository;

    setUp(() {
      component = _MockDrinkComponent();
      drinksRepository = _MockDrinksRepository();
      when(() => component.drinksRepository).thenReturn(drinksRepository);
    });

    test('can be instantiated', () {
      expect(
        DrinkBuilder(
          component: component,
          drinkId: 'DID',
          builder: (context, state) => const SizedBox(),
        ),
        isNotNull,
      );
    });

    testWidgets('renders loading state initially', (tester) async {
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenAnswer((_) => Completer<Drink>().future);

      late DrinkState capturedState;

      await tester.pumpWidget(
        MaterialApp(
          home: DrinkBuilder(
            component: component,
            drinkId: 'DID',
            builder: (context, state) {
              capturedState = state;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(capturedState, const DrinkLoading());
    });

    testWidgets('renders success state when drink loads', (tester) async {
      const drink = Drink(
        id: 'DID',
        title: 'Margarita',
        instructions: 'Mix',
        thumbnail: 'https://example.com/drink.jpg',
      );

      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenAnswer((_) async => drink);

      late DrinkState capturedState;

      await tester.pumpWidget(
        MaterialApp(
          home: DrinkBuilder(
            component: component,
            drinkId: 'DID',
            builder: (context, state) {
              capturedState = state;
              return const SizedBox();
            },
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(capturedState, const DrinkSuccess(drink: drink));
    });

    testWidgets('renders error state when drink fails to load', (
      tester,
    ) async {
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenThrow(Exception('fail'));

      late DrinkState capturedState;

      await tester.pumpWidget(
        MaterialApp(
          home: DrinkBuilder(
            component: component,
            drinkId: 'DID',
            builder: (context, state) {
              capturedState = state;
              return const SizedBox();
            },
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(capturedState, isA<DrinkError>());
      expect((capturedState as DrinkError).error, isA<Exception>());
    });
  });
}
