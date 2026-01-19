import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:favorites_repository/favorites_repository.dart';
import 'package:mealify_app/favorites/bloc/favorites_details_state.dart';
import 'package:mealify_app/favorites/bloc/populated_favorite.dart';
import 'package:meals_repository/meals_repository.dart';

class FavoritesDetailsCubit extends Cubit<FavoritesDetailsState> {
  FavoritesDetailsCubit({
    required MealsRepository mealsRepository,
    required DrinksRepository drinksRepository,
    required FavoritesRepository favoritesRepository,
    FavoritesDetailsState initialState = const FavoritesDetailsLoading(),
  }) : _mealsRepository = mealsRepository,
       _drinksRepository = drinksRepository,
       _favoritesRepository = favoritesRepository,
       super(initialState);

  final MealsRepository _mealsRepository;
  final DrinksRepository _drinksRepository;
  final FavoritesRepository _favoritesRepository;

  Future<void> loadFavorite({required String favoriteId}) async {
    emit(const FavoritesDetailsLoading());

    try {
      final favorite = await _favoritesRepository.getFavoriteById(favoriteId);

      if (favorite == null) {
        return emit(const FavoriteNotFoundState());
      }

      emit(
        FavoritesDetailsSuccess(
          favorite: PopulatedFavorite(
            favoriteId: favorite.id,
            meal: await _mealsRepository.getMealById(favorite.mealId),
            drink: await _drinksRepository.getDrinkById(favorite.drinkId),
            createAt: favorite.createdAt,
          ),
        ),
      );
    } on Object catch (e) {
      emit(FavoritesDetailsError(e));
    }
  }

  Future<void> removeFavorite(String favoriteId) async {
    await _favoritesRepository.removeFavorite(favoriteId);
  }
}
