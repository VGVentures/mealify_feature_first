import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_details/src/interactor/meal_details_state.dart';
import 'package:meals_domain/meals_domain.dart';

/// An Interactor that manages the meal details state.
class MealDetailsInteractor extends Cubit<MealDetailsState> {
  /// Construct a meal details interactor.
  MealDetailsInteractor({
    required IMealsRepository mealsRepository,
    MealDetailsState initialState = const MealDetailsLoading(),
  }) : _mealsRepository = mealsRepository,
       super(initialState);

  final IMealsRepository _mealsRepository;

  /// Load information about a meal.
  Future<void> loadMealDetails(String mealId) async {
    emit(const MealDetailsLoading());

    try {
      emit(
        MealDetailsSuccess(meal: await _mealsRepository.getMealById(mealId)),
      );
    } on Object catch (error) {
      emit(MealDetailsError(error));
    }
  }
}
