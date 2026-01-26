import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ideas_presentation/ideas_presentation.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:mocktail/mocktail.dart';

class _MockFavoritesRepository extends Mock implements IFavoritesRepository {}

class _MockMealsRepository extends Mock implements IMealsRepository {}

class _MockDrinksRepository extends Mock implements IDrinksRepository {}

void main() {
  group('$IdeasCubit', () {
    late _MockDrinksRepository drinksRepository;
    late _MockMealsRepository mealsRepository;
    late _MockFavoritesRepository favoritesRepository;
    late StreamController<bool> watchIsFavoritesController;

    setUp(() {
      drinksRepository = _MockDrinksRepository();
      mealsRepository = _MockMealsRepository();
      favoritesRepository = _MockFavoritesRepository();
      watchIsFavoritesController = StreamController();
    });

    test('starts in a loading state', () {
      final ideasCubit = IdeasCubit(
        drinksRepository: drinksRepository,
        mealsRepository: mealsRepository,
        favoritesRepository: favoritesRepository,
      );

      expect(ideasCubit.state, const IdeasLoading());
    });

    blocTest(
      'emits Loading -> Success when properly fetching data',
      setUp: () {
        when(
          mealsRepository.getRandomMeal,
        ).thenAnswer(
          (_) async => const Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        when(
          drinksRepository.getRandomDrink,
        ).thenAnswer(
          (_) async => const Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        when(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).thenAnswer((_) => Stream.value(false));
      },
      build: () {
        return IdeasCubit(
          drinksRepository: drinksRepository,
          mealsRepository: mealsRepository,
          favoritesRepository: favoritesRepository,
        );
      },
      act: (bloc) => bloc.generateNewIdea(),
      expect: () => [
        const IdeasLoading(),
        const IdeasSuccess(
          drinkLocked: false,
          mealLocked: false,
          meal: Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          drink: Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          isFavorite: false,
        ),
      ],
      verify: (bloc) {
        verify(mealsRepository.getRandomMeal).called(1);
        verify(drinksRepository.getRandomDrink).called(1);
        verify(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).called(1);
        verifyNoMoreInteractions(mealsRepository);
        verifyNoMoreInteractions(drinksRepository);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );

    blocTest(
      'emits Loading -> Error when meal fails',
      setUp: () {
        when(
          mealsRepository.getRandomMeal,
        ).thenAnswer(
          (_) async => throw const _MealException(),
        );
        when(
          drinksRepository.getRandomDrink,
        ).thenAnswer(
          (_) async => const Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        when(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).thenAnswer((_) => Stream.value(false));
      },
      build: () {
        return IdeasCubit(
          drinksRepository: drinksRepository,
          mealsRepository: mealsRepository,
          favoritesRepository: favoritesRepository,
        );
      },
      act: (bloc) => bloc.generateNewIdea(),
      expect: () => [
        const IdeasLoading(),
        const IdeasError(_MealException()),
      ],
      verify: (bloc) {
        verify(mealsRepository.getRandomMeal).called(1);
        verify(drinksRepository.getRandomDrink).called(1);
        verifyNoMoreInteractions(mealsRepository);
        verifyNoMoreInteractions(drinksRepository);
        verifyZeroInteractions(favoritesRepository);
      },
    );

    blocTest(
      'emits Loading -> Error when drink fails',
      setUp: () {
        when(
          mealsRepository.getRandomMeal,
        ).thenAnswer(
          (_) async => const Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        when(
          drinksRepository.getRandomDrink,
        ).thenAnswer(
          (_) async => throw const _DrinkException(),
        );
        when(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).thenAnswer((_) => Stream.value(false));
      },
      build: () {
        return IdeasCubit(
          drinksRepository: drinksRepository,
          mealsRepository: mealsRepository,
          favoritesRepository: favoritesRepository,
        );
      },
      act: (bloc) => bloc.generateNewIdea(),
      expect: () => [
        const IdeasLoading(),
        const IdeasError(_DrinkException()),
      ],
      verify: (bloc) {
        verify(mealsRepository.getRandomMeal).called(1);
        verify(drinksRepository.getRandomDrink).called(1);
        verifyNoMoreInteractions(mealsRepository);
        verifyNoMoreInteractions(drinksRepository);
        verifyZeroInteractions(favoritesRepository);
      },
    );

    blocTest(
      'emits Loading -> Error when watchIsFavorite emits an error',
      setUp: () {
        when(
          mealsRepository.getRandomMeal,
        ).thenAnswer(
          (_) async => const Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        when(
          drinksRepository.getRandomDrink,
        ).thenAnswer(
          (_) async => const Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        when(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).thenAnswer((_) => Stream.error(const _FavoriteException()));
      },
      build: () {
        return IdeasCubit(
          drinksRepository: drinksRepository,
          mealsRepository: mealsRepository,
          favoritesRepository: favoritesRepository,
        );
      },
      act: (bloc) => bloc.generateNewIdea(),
      expect: () => [
        const IdeasLoading(),
        const IdeasError(_FavoriteException()),
      ],
      verify: (bloc) {
        verify(mealsRepository.getRandomMeal).called(1);
        verify(drinksRepository.getRandomDrink).called(1);
        verify(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).called(1);
        verifyNoMoreInteractions(mealsRepository);
        verifyNoMoreInteractions(drinksRepository);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );

    blocTest(
      'adds a favorite if starting out false',
      setUp: () {
        when(
          mealsRepository.getRandomMeal,
        ).thenAnswer(
          (_) async => const Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        when(
          drinksRepository.getRandomDrink,
        ).thenAnswer(
          (_) async => const Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        watchIsFavoritesController.add(false);
        when(
          () => favoritesRepository.addFavorite(mealId: 'MID', drinkId: 'DID'),
        ).thenAnswer((_) async {});
        when(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).thenAnswer((_) => watchIsFavoritesController.stream);
      },
      build: () {
        return IdeasCubit(
          drinksRepository: drinksRepository,
          mealsRepository: mealsRepository,
          favoritesRepository: favoritesRepository,
        );
      },
      act: (bloc) async {
        await bloc.generateNewIdea();
        await bloc.toggleFavorite();
        watchIsFavoritesController.add(true);
      },
      expect: () => [
        const IdeasLoading(),
        const IdeasSuccess(
          drinkLocked: false,
          mealLocked: false,
          meal: Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          drink: Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          isFavorite: false,
        ),
        const IdeasSuccess(
          drinkLocked: false,
          mealLocked: false,
          meal: Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          drink: Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          isFavorite: true,
        ),
      ],
      verify: (bloc) {
        verify(mealsRepository.getRandomMeal).called(1);
        verify(drinksRepository.getRandomDrink).called(1);
        verify(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).called(1);
        verify(
          () => favoritesRepository.addFavorite(mealId: 'MID', drinkId: 'DID'),
        ).called(1);
        verifyNoMoreInteractions(mealsRepository);
        verifyNoMoreInteractions(drinksRepository);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );

    blocTest(
      'removes a favorite if starting out true',
      setUp: () {
        when(
          mealsRepository.getRandomMeal,
        ).thenAnswer(
          (_) async => const Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        when(
          drinksRepository.getRandomDrink,
        ).thenAnswer(
          (_) async => const Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        watchIsFavoritesController.add(true);
        when(
          () => favoritesRepository.removeFavoriteByMealAndDrinkId(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).thenAnswer((_) async {});
        when(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).thenAnswer((_) => watchIsFavoritesController.stream);
      },
      build: () {
        return IdeasCubit(
          drinksRepository: drinksRepository,
          mealsRepository: mealsRepository,
          favoritesRepository: favoritesRepository,
        );
      },
      act: (bloc) async {
        await bloc.generateNewIdea();
        await bloc.toggleFavorite();
        watchIsFavoritesController.add(false);
      },
      expect: () => [
        const IdeasLoading(),
        const IdeasSuccess(
          drinkLocked: false,
          mealLocked: false,
          meal: Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          drink: Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          isFavorite: true,
        ),
        const IdeasSuccess(
          drinkLocked: false,
          mealLocked: false,
          meal: Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          drink: Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          isFavorite: false,
        ),
      ],
      verify: (bloc) {
        verify(mealsRepository.getRandomMeal).called(1);
        verify(drinksRepository.getRandomDrink).called(1);
        verify(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).called(1);
        verify(
          () => favoritesRepository.removeFavoriteByMealAndDrinkId(
            mealId: 'MID',
            drinkId: 'DID',
          ),
        ).called(1);
        verifyNoMoreInteractions(mealsRepository);
        verifyNoMoreInteractions(drinksRepository);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );

    blocTest(
      'toggles meal locked false -> true and no longer fetches a new meal',
      setUp: () {
        when(
          drinksRepository.getRandomDrink,
        ).thenAnswer(
          (_) async => const Drink(
            id: 'DID2',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        when(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID2',
          ),
        ).thenAnswer((_) => Stream.value(false));
      },
      build: () {
        return IdeasCubit(
          drinksRepository: drinksRepository,
          mealsRepository: mealsRepository,
          favoritesRepository: favoritesRepository,
          initialState: const IdeasSuccess(
            drinkLocked: false,
            mealLocked: false,
            meal: Meal(
              id: 'MID',
              title: '',
              instructions: '',
              thumbnail: '',
            ),
            drink: Drink(
              id: 'DID',
              title: '',
              instructions: '',
              thumbnail: '',
            ),
            isFavorite: false,
          ),
        );
      },
      act: (bloc) async {
        bloc.toggleMealLocked();
        await bloc.generateNewIdea();
      },
      expect: () => [
        const IdeasSuccess(
          drinkLocked: false,
          mealLocked: true,
          meal: Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          drink: Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          isFavorite: false,
        ),
        const IdeasLoading(),
        const IdeasSuccess(
          drinkLocked: false,
          mealLocked: true,
          meal: Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          drink: Drink(
            id: 'DID2',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          isFavorite: false,
        ),
      ],
      verify: (bloc) {
        verify(drinksRepository.getRandomDrink).called(1);
        verify(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID',
            drinkId: 'DID2',
          ),
        ).called(1);
        verifyZeroInteractions(mealsRepository);
        verifyNoMoreInteractions(drinksRepository);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );

    blocTest(
      'toggles drink locked false -> true and no longer fetches a new meal',
      setUp: () {
        when(
          mealsRepository.getRandomMeal,
        ).thenAnswer(
          (_) async => const Meal(
            id: 'MID2',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
        );
        when(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID2',
            drinkId: 'DID',
          ),
        ).thenAnswer((_) => Stream.value(false));
      },
      build: () {
        return IdeasCubit(
          drinksRepository: drinksRepository,
          mealsRepository: mealsRepository,
          favoritesRepository: favoritesRepository,
          initialState: const IdeasSuccess(
            drinkLocked: false,
            mealLocked: false,
            meal: Meal(
              id: 'MID',
              title: '',
              instructions: '',
              thumbnail: '',
            ),
            drink: Drink(
              id: 'DID',
              title: '',
              instructions: '',
              thumbnail: '',
            ),
            isFavorite: false,
          ),
        );
      },
      act: (bloc) async {
        bloc.toggleDrinkLocked();
        await bloc.generateNewIdea();
      },
      expect: () => [
        const IdeasSuccess(
          drinkLocked: true,
          mealLocked: false,
          meal: Meal(
            id: 'MID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          drink: Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          isFavorite: false,
        ),
        const IdeasLoading(),
        const IdeasSuccess(
          drinkLocked: true,
          mealLocked: false,
          meal: Meal(
            id: 'MID2',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          drink: Drink(
            id: 'DID',
            title: '',
            instructions: '',
            thumbnail: '',
          ),
          isFavorite: false,
        ),
      ],
      verify: (bloc) {
        verify(mealsRepository.getRandomMeal).called(1);
        verify(
          () => favoritesRepository.watchIsFavorite(
            mealId: 'MID2',
            drinkId: 'DID',
          ),
        ).called(1);
        verifyNoMoreInteractions(mealsRepository);
        verifyZeroInteractions(drinksRepository);
        verifyNoMoreInteractions(favoritesRepository);
      },
    );
  });
}

class _MealException implements Exception {
  const _MealException();
}

class _DrinkException implements Exception {
  const _DrinkException();
}

class _FavoriteException implements Exception {
  const _FavoriteException();
}
