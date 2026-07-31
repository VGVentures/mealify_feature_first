import 'dart:async';

import 'package:async/async.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideas_presentation/src/ideas/bloc/ideas_state.dart';
import 'package:meals_domain/meals_domain.dart';

/// The cubit that manages the ideas state. It is responsible for loading ideas,
/// add the idea to a list of favorites, and generating new combinations.
class IdeasCubit extends Cubit<IdeasState> {
  /// Construct an IdeasCubit with the necessary dependencies. [initialState]
  /// can be optionally provided, generally for testing.
  IdeasCubit({
    required IDrinksRepository drinksRepository,
    required IMealsRepository mealsRepository,
    required IFavoritesRepository favoritesRepository,
    IdeasState initialState = const IdeasLoading(),
  }) : _mealsRepository = mealsRepository,
       _drinksRepository = drinksRepository,
       _favoritesRepository = favoritesRepository,
       super(initialState);

  final IDrinksRepository _drinksRepository;
  final IMealsRepository _mealsRepository;
  final IFavoritesRepository _favoritesRepository;
  CancelableOperation<List<dynamic>>? _fetchRandomMealsOperation;
  StreamSubscription<bool>? _isFavoriteSubscription;

  /// Generate a new idea for a meal + drink combo!
  Future<void> generateNewIdea() async {
    await _fetchRandomMealsOperation?.cancel();
    await _isFavoriteSubscription?.cancel();
    final initialState = state;
    final mealLocked = initialState is IdeasSuccess && initialState.mealLocked;
    final drinkLocked =
        initialState is IdeasSuccess && initialState.drinkLocked;
    final completer = Completer<void>();
    emit(const IdeasLoading());

    try {
      _fetchRandomMealsOperation =
          CancelableOperation<List<dynamic>>.fromFuture(
            Future.wait([
              if (mealLocked)
                Future.value(initialState.meal)
              else
                _mealsRepository.getRandomMeal(),
              if (drinkLocked)
                Future.value(initialState.drink)
              else
                _drinksRepository.getRandomDrink(),
            ]),
          );
      final results = await _fetchRandomMealsOperation!.value;
      final meal = results[0] as Meal;
      final drink = results[1] as Drink;

      _isFavoriteSubscription = _favoritesRepository
          .watchIsFavorite(mealId: meal.id, drinkId: drink.id)
          .listen(
            (isFavorite) {
              emit(
                IdeasSuccess(
                  meal: meal,
                  drink: drink,
                  isFavorite: isFavorite,
                  drinkLocked: drinkLocked,
                  mealLocked: mealLocked,
                ),
              );
              if (!completer.isCompleted) completer.complete();
            },
            onError: (Object e) {
              if (!completer.isCompleted) completer.complete();
              emit(IdeasError(e));
            },
          );
    } on Object catch (e) {
      if (!completer.isCompleted) completer.complete();
      emit(IdeasError(e));
    }

    return completer.future;
  }

  /// Toggles whether to lock or unlock the meal. If locked and a new idea is
  /// generated, the meal is kept.
  void toggleMealLocked() {
    final currentState = state as IdeasSuccess;

    emit(
      IdeasSuccess(
        meal: currentState.meal,
        drink: currentState.drink,
        isFavorite: currentState.isFavorite,
        drinkLocked: currentState.drinkLocked,
        mealLocked: !currentState.mealLocked,
      ),
    );
  }

  /// Toggles whether to lock or unlock the drink. If locked and a new idea is
  /// generated, the drink is kept.
  void toggleDrinkLocked() {
    final currentState = state as IdeasSuccess;

    emit(
      IdeasSuccess(
        meal: currentState.meal,
        drink: currentState.drink,
        isFavorite: currentState.isFavorite,
        drinkLocked: !currentState.drinkLocked,
        mealLocked: currentState.mealLocked,
      ),
    );
  }

  /// Toggles whether or not a meal + drink combo is saved to the user's
  /// favorites
  Future<void> toggleFavorite() async {
    final currentState = state as IdeasSuccess;

    if (currentState.isFavorite) {
      await _favoritesRepository.removeFavoriteByMealAndDrinkId(
        mealId: currentState.meal.id,
        drinkId: currentState.drink.id,
      );
    } else {
      await _favoritesRepository.addFavorite(
        mealId: currentState.meal.id,
        drinkId: currentState.drink.id,
      );
    }
  }

  @override
  Future<void> close() async {
    await _fetchRandomMealsOperation?.cancel();
    await _isFavoriteSubscription?.cancel();
    return super.close();
  }
}
