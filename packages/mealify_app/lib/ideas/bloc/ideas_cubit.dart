import 'package:bloc/bloc.dart';
import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:mealdb_api_client/mealdb_api_client.dart';
import 'package:mealify_app/ideas/bloc/ideas_state.dart';

class IdeasCubit extends Cubit<IdeasState> {
  IdeasCubit({
    required CocktailDbApiClient cocktailDbApiClient,
    required MealDbApiClient mealDbApiClient,
    IdeasState initialState = const IdeasLoading(),
  }) : _mealDbApiClient = mealDbApiClient,
       _cocktailDbApiClient = cocktailDbApiClient,
       super(initialState);

  final CocktailDbApiClient _cocktailDbApiClient;
  final MealDbApiClient _mealDbApiClient;

  Future<void> fetchRandomMeal() async {
    emit(const IdeasLoading());

    try {
      final [meal, drink] = await Future.wait([
        _mealDbApiClient.fetchRandomMeal(),
        _cocktailDbApiClient.fetchRandomDrink(),
      ]);

      emit(IdeasSuccess(meal: meal as Meal, drink: drink as Drink));
    } on Object catch (e) {
      emit(IdeasError(e));
    }
  }
}
