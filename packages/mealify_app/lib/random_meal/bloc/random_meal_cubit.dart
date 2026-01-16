import 'package:bloc/bloc.dart';
import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:mealdb_api_client/mealdb_api_client.dart';
import 'package:mealify_app/random_meal/bloc/random_meal_state.dart';

class RandomMealCubit extends Cubit<RandomMealState> {
  RandomMealCubit({
    required CocktailDbApiClient cocktailDbApiClient,
    required MealDbApiClient mealDbApiClient,
    RandomMealState initialState = const RandomMealLoading(),
  }) : _mealDbApiClient = mealDbApiClient,
       _cocktailDbApiClient = cocktailDbApiClient,
       super(initialState);

  final CocktailDbApiClient _cocktailDbApiClient;
  final MealDbApiClient _mealDbApiClient;

  Future<void> fetchRandomMeal() async {
    emit(const RandomMealLoading());

    try {
      final [meal, drink] = await Future.wait([
        _mealDbApiClient.fetchRandomMeal(),
        _cocktailDbApiClient.fetchRandomDrink(),
      ]);

      emit(RandomMealSuccess(meal: meal as Meal, drink: drink as Drink));
    } on Object catch (e) {
      emit(RandomMealError(e));
    }
  }
}
