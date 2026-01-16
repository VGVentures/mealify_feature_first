import 'package:bloc/bloc.dart';
import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:mealify_app/ideas/bloc/ideas_state.dart';
import 'package:meals_repository/meals_repository.dart';

class IdeasCubit extends Cubit<IdeasState> {
  IdeasCubit({
    required CocktailDbApiClient cocktailDbApiClient,
    required MealsRepository mealsRepository,
    IdeasState initialState = const IdeasLoading(),
  }) : _mealsRepository = mealsRepository,
       _cocktailDbApiClient = cocktailDbApiClient,
       super(initialState);

  final CocktailDbApiClient _cocktailDbApiClient;
  final MealsRepository _mealsRepository;

  Future<void> fetchRandomMeal() async {
    emit(const IdeasLoading());

    try {
      final [meal, drink] = await Future.wait([
        _mealsRepository.getRandomMeal(),
        _cocktailDbApiClient.fetchRandomDrink(),
      ]);

      emit(IdeasSuccess(meal: meal as Meal, drink: drink as Drink));
    } on Object catch (e) {
      emit(IdeasError(e));
    }
  }
}
