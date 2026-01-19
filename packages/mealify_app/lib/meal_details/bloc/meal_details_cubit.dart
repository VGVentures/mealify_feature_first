import 'package:bloc/bloc.dart';
import 'package:mealify_app/meal_details/bloc/meal_details_state.dart';
import 'package:meals_repository/meals_repository.dart';

class MealDetailsCubit extends Cubit<MealDetailsState> {
  MealDetailsCubit({
    required MealsRepository mealsRepository,
    MealDetailsState initialState = const MealDetailsLoading(),
  }) : _mealsRepository = mealsRepository,
       super(initialState);

  final MealsRepository _mealsRepository;

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
