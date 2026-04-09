import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meal/meal.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:mocktail/mocktail.dart';

class _MockMealComponent extends Mock implements MealComponent {}

class _MockMealsRepository extends Mock implements IMealsRepository {}

void main() {
  group('MealBuilder', () {
    late _MockMealComponent component;
    late _MockMealsRepository mealsRepository;

    setUp(() {
      component = _MockMealComponent();
      mealsRepository = _MockMealsRepository();
      when(() => component.mealsRepository).thenReturn(mealsRepository);
    });

    test('can be instantiated', () {
      expect(
        MealBuilder(
          component: component,
          mealId: 'MID',
          builder: (context, state) => const SizedBox(),
        ),
        isNotNull,
      );
    });

    testWidgets('renders loading state initially', (tester) async {
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenAnswer((_) => Completer<Meal>().future);

      late MealState capturedState;

      await tester.pumpWidget(
        MaterialApp(
          home: MealBuilder(
            component: component,
            mealId: 'MID',
            builder: (context, state) {
              capturedState = state;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(capturedState, const MealLoading());
    });

    testWidgets('renders success state when meal loads', (tester) async {
      const meal = Meal(
        id: 'MID',
        title: 'Spaghetti',
        instructions: 'Boil',
        thumbnail: 'https://example.com/meal.jpg',
      );

      when(
        () => mealsRepository.getMealById('MID'),
      ).thenAnswer((_) async => meal);

      late MealState capturedState;

      await tester.pumpWidget(
        MaterialApp(
          home: MealBuilder(
            component: component,
            mealId: 'MID',
            builder: (context, state) {
              capturedState = state;
              return const SizedBox();
            },
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(capturedState, const MealSuccess(meal: meal));
    });

    testWidgets('renders error state when meal fails to load', (tester) async {
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenThrow(Exception('fail'));

      late MealState capturedState;

      await tester.pumpWidget(
        MaterialApp(
          home: MealBuilder(
            component: component,
            mealId: 'MID',
            builder: (context, state) {
              capturedState = state;
              return const SizedBox();
            },
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(capturedState, isA<MealError>());
      expect((capturedState as MealError).error, isA<Exception>());
    });
  });
}
