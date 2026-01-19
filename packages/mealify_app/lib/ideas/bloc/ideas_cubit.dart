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
    emit(const IdeasLoading());

    try {
      _fetchRandomMealsOperation =
          CancelableOperation<List<dynamic>>.fromFuture(
            Future.wait([
              _mealsRepository.getRandomMeal(),
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
                ),
              );
            },
            onError: (Object e) {
              emit(IdeasError(e));
            },
          );
    } on Object catch (e) {
      emit(IdeasError(e));
    }
  }

  Future<void> toggleFavorite() async {
    if (state is! IdeasSuccess) {
      throw ToggleFavoriteBeforeSuccessException();
    }
    final s = state as IdeasSuccess;

    if (s.isFavorite) {
      await _favoritesRepository.removeFavoriteByMealAndDrinkId(
        mealId: s.meal.id,
        drinkId: s.drink.id,
      );
    } else {
      await _favoritesRepository.addFavorite(
        mealId: s.meal.id,
        drinkId: s.drink.id,
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

class ToggleFavoriteBeforeSuccessException implements Exception {}
