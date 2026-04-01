import 'package:drink_details/src/interactor/drink_details_state.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// An Interactor that manages the drink details state.
class DrinkDetailsInteractor extends Cubit<DrinkDetailsState> {
  /// Construct the drink details interactor with a repository and
  /// [initialState].
  DrinkDetailsInteractor({
    required IDrinksRepository drinksRepository,
    DrinkDetailsState initialState = const DrinkDetailsLoading(),
  }) : _drinksRepository = drinksRepository,
       super(initialState);

  final IDrinksRepository _drinksRepository;

  /// Load the details of the drink with the given id.
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
