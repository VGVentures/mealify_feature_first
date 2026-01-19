import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:mealify_app/ideas/bloc/ideas_state.dart';
import 'package:meals_repository/meals_repository.dart';

class IdeasCubit extends Cubit<IdeasState> {
  IdeasCubit({
    required DrinksRepository drinksRepository,
    required MealsRepository mealsRepository,
    IdeasState initialState = const IdeasLoading(),
  }) : _mealsRepository = mealsRepository,
       _drinksRepository = drinksRepository,
       super(initialState);

  final DrinksRepository _drinksRepository;
  final MealsRepository _mealsRepository;
  CancelableOperation<List<dynamic>>? _fetchRandomMealsOperation;

  Future<void> fetchRandomMeal() async {
    await _fetchRandomMealsOperation?.cancel();
    emit(const IdeasLoading());

    try {
      _fetchRandomMealsOperation =
          CancelableOperation<List<dynamic>>.fromFuture(
            Future.wait([
              _mealsRepository.getRandomMeal(),
              _drinksRepository.getRandomDrink(),
            ]),
          );
      final [meal, drink] = await _fetchRandomMealsOperation!.value;

      emit(IdeasSuccess(meal: meal as Meal, drink: drink as Drink));
    } on Object catch (e) {
      emit(IdeasError(e));
    }
  }
}
