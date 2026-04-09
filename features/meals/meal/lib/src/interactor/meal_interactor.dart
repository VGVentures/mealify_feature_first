import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meal/src/interactor/meal_state.dart';
import 'package:meals_domain/meals_domain.dart';

/// An Interactor that fetches a single Meal by id.
class MealInteractor extends Cubit<MealState> {
  /// Construct with the required repository.
  MealInteractor({
    required IMealsRepository mealsRepository,
    MealState initialState = const MealLoading(),
  }) : _mealsRepository = mealsRepository,
       super(initialState);

  final IMealsRepository _mealsRepository;

  /// Load a meal by id.
  Future<void> loadMeal(String mealId) async {
    emit(const MealLoading());

    try {
      emit(MealSuccess(meal: await _mealsRepository.getMealById(mealId)));
    } on Object catch (e) {
      emit(MealError(e));
    }
  }
}
