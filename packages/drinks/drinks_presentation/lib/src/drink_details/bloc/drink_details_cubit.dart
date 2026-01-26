import 'package:drinks_domain/drinks_domain.dart';
import 'package:drinks_presentation/src/drink_details/bloc/drink_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A Cubit that manages the drink details page
class DrinkDetailsCubit extends Cubit<DrinkDetailsState> {
  /// Construct the Drink details cubit with a repository and [initialState]
  DrinkDetailsCubit({
    required IDrinksRepository drinksRepository,
    DrinkDetailsState initialState = const DrinkDetailsLoading(),
  }) : _drinksRepository = drinksRepository,
       super(initialState);

  final IDrinksRepository _drinksRepository;

  /// Load the details of the drink with the given id
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
