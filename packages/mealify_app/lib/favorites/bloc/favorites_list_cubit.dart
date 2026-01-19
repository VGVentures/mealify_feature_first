import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:favorites_repository/favorites_repository.dart';
import 'package:mealify_app/favorites/bloc/favorites_list_state.dart';
import 'package:mealify_app/favorites/bloc/populated_favorite.dart';
import 'package:meals_repository/meals_repository.dart';

class FavoritesListCubit extends Cubit<FavoritesListState> {
  FavoritesListCubit({
    required MealsRepository mealsRepository,
    required DrinksRepository drinksRepository,
    required FavoritesRepository favoritesRepository,
    FavoritesListState initialState = const FavoritesListLoading(),
  }) : _mealsRepository = mealsRepository,
       _drinksRepository = drinksRepository,
       _favoritesRepository = favoritesRepository,
       super(initialState);

  final MealsRepository _mealsRepository;
  final DrinksRepository _drinksRepository;
  final FavoritesRepository _favoritesRepository;
  late StreamSubscription<List<PopulatedFavorite>> _favoritesStreamSubscription;

  void watchFavorites() {
    _favoritesStreamSubscription = _favoritesRepository
        .watchAllFavorites()
        .asyncMap((favorites) async {
          return [
            for (final favorite in favorites)
              PopulatedFavorite(
                favoriteId: favorite.id,
                meal: await _mealsRepository.getMealById(favorite.mealId),
                drink: await _drinksRepository.getDrinkById(favorite.drinkId),
                createAt: favorite.createdAt,
              ),
          ];
        })
        .listen(
          (favorites) {
            emit(FavoritesListSuccess(favorites: favorites));
          },
          onError: (Object e) {
            emit(FavoritesListError(e));
          },
        );
  }

  Future<void> removeFavorite(String favoriteId) async {
    await _favoritesRepository.removeFavorite(favoriteId);
  }

  @override
  Future<void> close() async {
    await _favoritesStreamSubscription.cancel();
    return super.close();
  }
}
