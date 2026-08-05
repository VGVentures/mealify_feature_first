import 'dart:async';

import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockFavoritesRepository extends Mock implements IFavoritesRepository {}

class MockMealsRepository extends Mock implements IMealsRepository {}

class MockDrinksRepository extends Mock implements IDrinksRepository {}

const _meal = Meal(
  id: 'meal_1',
  title: 'Meal',
  instructions: 'Cook it.',
  thumbnail: 'https://example.com/meal.png',
);

const _drink = Drink(
  id: 'drink_1',
  title: 'Drink',
  instructions: 'Pour it.',
  thumbnail: 'https://example.com/drink.png',
);

final _summary = FavoriteSummary(
  id: '1',
  mealId: 'meal_1',
  drinkId: 'drink_1',
  createdAt: DateTime.utc(2026, 8, 4),
);

void main() {
  group('GetFavoriteQuery', () {
    late MockFavoritesRepository favoritesRepository;
    late MockMealsRepository mealsRepository;
    late MockDrinksRepository drinksRepository;

    setUp(() {
      favoritesRepository = MockFavoritesRepository();
      mealsRepository = MockMealsRepository();
      drinksRepository = MockDrinksRepository();

      when(() => favoritesRepository.getFavoriteById('1')).thenAnswer(
        (_) async => _summary,
      );
    });

    GetFavoriteQuery buildQuery() => GetFavoriteQuery(
      mealsRepository: mealsRepository,
      drinksRepository: drinksRepository,
      favoritesRepository: favoritesRepository,
    );

    test('populates the favorite with its meal and drink', () async {
      when(() => mealsRepository.getMealById('meal_1')).thenAnswer(
        (_) async => _meal,
      );
      when(() => drinksRepository.getDrinkById('drink_1')).thenAnswer(
        (_) async => _drink,
      );

      final favorite = await buildQuery().get('1');

      expect(favorite.id, '1');
      expect(favorite.meal, _meal);
      expect(favorite.drink, _drink);
      expect(favorite.createdAt, _summary.createdAt);
    });

    // The two reads are independent, so they must be in flight together. Held
    // open, a sequential implementation never reaches the drink at all, which
    // is what this asserts rather than measuring elapsed time.
    test('fetches the meal and the drink concurrently', () async {
      final meal = Completer<Meal>();
      final drink = Completer<Drink>();
      when(() => mealsRepository.getMealById('meal_1')).thenAnswer(
        (_) => meal.future,
      );
      when(() => drinksRepository.getDrinkById('drink_1')).thenAnswer(
        (_) => drink.future,
      );

      final pending = buildQuery().get('1');
      // Let the query run as far as it can while both reads hang.
      await pumpEventQueue();

      verify(() => mealsRepository.getMealById('meal_1')).called(1);
      verify(() => drinksRepository.getDrinkById('drink_1')).called(1);

      meal.complete(_meal);
      drink.complete(_drink);
      await expectLater(pending, completes);
    });

    test('throws FavoriteNotFoundException for an unknown id', () async {
      when(() => favoritesRepository.getFavoriteById('nope')).thenAnswer(
        (_) async => null,
      );

      await expectLater(
        buildQuery().get('nope'),
        throwsA(const FavoriteNotFoundException('nope')),
      );
    });

    test('surfaces the underlying error when a read fails', () async {
      final failure = Exception('offline');
      when(() => mealsRepository.getMealById('meal_1')).thenAnswer(
        (_) async => throw failure,
      );
      when(() => drinksRepository.getDrinkById('drink_1')).thenAnswer(
        (_) async => _drink,
      );

      await expectLater(buildQuery().get('1'), throwsA(failure));
    });

    // Guards the obvious hand-rolled alternative to `Future.wait`: create both
    // futures, then await them one after the other. That is concurrent, so the
    // test above cannot tell it apart from the real fix, but it leaves the
    // second failure unobserved, and an unhandled async error fails this test.
    //
    // Checked against both reverts rather than assumed. Replacing the
    // implementation with two eagerly created futures awaited in sequence turns
    // this red. Reverting to the original, where `getDrinkById` is never
    // reached because the meal's await throws first, leaves it green: there is
    // no second error to leave unhandled, and the concurrency test above is
    // what catches that shape.
    test('surfaces one error and leaves neither unhandled', () async {
      final mealFailure = Exception('meal offline');
      final drinkFailure = Exception('drink offline');
      when(() => mealsRepository.getMealById('meal_1')).thenAnswer(
        (_) async => throw mealFailure,
      );
      when(() => drinksRepository.getDrinkById('drink_1')).thenAnswer(
        (_) async => throw drinkFailure,
      );

      await expectLater(
        buildQuery().get('1'),
        throwsA(anyOf(same(mealFailure), same(drinkFailure))),
      );
      await pumpEventQueue();
    });
  });
}
