import 'package:bloc_test/bloc_test.dart';
import 'package:drink/drink.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDrinksRepository extends Mock implements IDrinksRepository {}

void main() {
  group('$DrinkInteractor', () {
    late _MockDrinksRepository drinksRepository;

    setUp(() {
      drinksRepository = _MockDrinksRepository();
    });

    test('starts in a loading state', () {
      final interactor = DrinkInteractor(drinksRepository: drinksRepository);

      expect(interactor.state, const DrinkLoading());
    });

    blocTest<DrinkInteractor, DrinkState>(
      'emits Loading -> Success when drink loads successfully',
      setUp: () {
        when(
          () => drinksRepository.getDrinkById('DID'),
        ).thenAnswer(
          (_) async => const Drink(
            id: 'DID',
            title: 'Margarita',
            instructions: 'Mix',
            thumbnail: 'https://example.com/drink.jpg',
          ),
        );
      },
      build: () => DrinkInteractor(drinksRepository: drinksRepository),
      act: (interactor) => interactor.loadDrink('DID'),
      expect: () => [
        const DrinkLoading(),
        const DrinkSuccess(
          drink: Drink(
            id: 'DID',
            title: 'Margarita',
            instructions: 'Mix',
            thumbnail: 'https://example.com/drink.jpg',
          ),
        ),
      ],
      verify: (_) {
        verify(() => drinksRepository.getDrinkById('DID')).called(1);
        verifyNoMoreInteractions(drinksRepository);
      },
    );

    blocTest<DrinkInteractor, DrinkState>(
      'emits Loading -> Error when drink fails to load',
      setUp: () {
        when(
          () => drinksRepository.getDrinkById('DID'),
        ).thenThrow(const _TestException());
      },
      build: () => DrinkInteractor(drinksRepository: drinksRepository),
      act: (interactor) => interactor.loadDrink('DID'),
      expect: () => [
        const DrinkLoading(),
        const DrinkError(_TestException()),
      ],
      verify: (_) {
        verify(() => drinksRepository.getDrinkById('DID')).called(1);
        verifyNoMoreInteractions(drinksRepository);
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
