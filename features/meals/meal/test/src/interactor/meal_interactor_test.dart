import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meal/meal.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:mocktail/mocktail.dart';

class _MockMealsRepository extends Mock implements IMealsRepository {}

void main() {
  group('$MealInteractor', () {
    late _MockMealsRepository mealsRepository;

    setUp(() {
      mealsRepository = _MockMealsRepository();
    });

    test('starts in a loading state', () {
      final interactor = MealInteractor(mealsRepository: mealsRepository);

      expect(interactor.state, const MealLoading());
    });

    blocTest<MealInteractor, MealState>(
      'emits Loading -> Success when meal loads successfully',
      setUp: () {
        when(
          () => mealsRepository.getMealById('MID'),
        ).thenAnswer(
          (_) async => const Meal(
            id: 'MID',
            title: 'Spaghetti',
            instructions: 'Boil',
            thumbnail: 'https://example.com/meal.jpg',
          ),
        );
      },
      build: () => MealInteractor(mealsRepository: mealsRepository),
      act: (interactor) => interactor.loadMeal('MID'),
      expect: () => [
        const MealLoading(),
        const MealSuccess(
          meal: Meal(
            id: 'MID',
            title: 'Spaghetti',
            instructions: 'Boil',
            thumbnail: 'https://example.com/meal.jpg',
          ),
        ),
      ],
      verify: (_) {
        verify(() => mealsRepository.getMealById('MID')).called(1);
        verifyNoMoreInteractions(mealsRepository);
      },
    );

    blocTest<MealInteractor, MealState>(
      'emits Loading -> Error when meal fails to load',
      setUp: () {
        when(
          () => mealsRepository.getMealById('MID'),
        ).thenThrow(const _TestException());
      },
      build: () => MealInteractor(mealsRepository: mealsRepository),
      act: (interactor) => interactor.loadMeal('MID'),
      expect: () => [
        const MealLoading(),
        const MealError(_TestException()),
      ],
      verify: (_) {
        verify(() => mealsRepository.getMealById('MID')).called(1);
        verifyNoMoreInteractions(mealsRepository);
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
