import 'package:bloc/bloc.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:mealify_app/drink_details/bloc/drink_details_state.dart';

class DrinkDetailsCubit extends Cubit<DrinkDetailsState> {
  DrinkDetailsCubit({
    required DrinksRepository drinksRepository,
    DrinkDetailsState initialState = const DrinkDetailsLoading(),
  }) : _drinksRepository = drinksRepository,
       super(initialState);

  final DrinksRepository _drinksRepository;

  Future<void> loadDrinkDetails(String drinkId) async {
    emit(const DrinkDetailsLoading());

    try {
      emit(
        DrinkDetailsSuccess(
          drink: await _drinksRepository.getDrinkById(drinkId),
        ),
      );
    } on Object catch (error) {
      emit(DrinkDetailsError(error));
    }
  }
}
