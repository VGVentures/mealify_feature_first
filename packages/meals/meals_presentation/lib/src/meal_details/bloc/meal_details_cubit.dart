import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:meals_presentation/src/meal_details/bloc/meal_details_state.dart';

/// A cubit that manages the Meal details screen
class MealDetailsCubit extends Cubit<MealDetailsState> {
  /// Construct a meal details cubit
  MealDetailsCubit({
    required IMealsRepository mealsRepository,
    MealDetailsState initialState = const MealDetailsLoading(),
  }) : _mealsRepository = mealsRepository,
       super(initialState);

  final IMealsRepository _mealsRepository;

  /// Load information about a meal
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
