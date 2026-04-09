import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drink/src/interactor/drink_state.dart';
import 'package:drinks_domain/drinks_domain.dart';

/// An Interactor that fetches a single Drink by id.
class DrinkInteractor extends Cubit<DrinkState> {
  /// Construct with the required repository.
  DrinkInteractor({
    required IDrinksRepository drinksRepository,
    DrinkState initialState = const DrinkLoading(),
  }) : _drinksRepository = drinksRepository,
       super(initialState);

  final IDrinksRepository _drinksRepository;

  /// Load a drink by id.
  Future<void> loadDrink(String drinkId) async {
    emit(const DrinkLoading());

    try {
      emit(
        DrinkSuccess(drink: await _drinksRepository.getDrinkById(drinkId)),
      );
    } on Object catch (e) {
      emit(DrinkError(e));
    }
  }
}
