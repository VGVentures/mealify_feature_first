import 'dart:async';

import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:favorites_repository/favorites_repository.dart';
import 'package:mealify_app/ideas/bloc/ideas_state.dart';
import 'package:meals_repository/meals_repository.dart';

class IdeasCubit extends Cubit<IdeasState> {
  IdeasCubit({
    required DrinksRepository drinksRepository,
    required MealsRepository mealsRepository,
    required FavoritesRepository favoritesRepository,
    IdeasState initialState = const IdeasLoading(),
  }) : _mealsRepository = mealsRepository,
       _drinksRepository = drinksRepository,
       _favoritesRepository = favoritesRepository,
       super(initialState);

  final DrinksRepository _drinksRepository;
  final MealsRepository _mealsRepository;
  final FavoritesRepository _favoritesRepository;
  CancelableOperation<List<dynamic>>? _fetchRandomMealsOperation;
  StreamSubscription<bool>? _isFavoriteSubscription;

  Future<void> fetchRandomMeal() async {
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
