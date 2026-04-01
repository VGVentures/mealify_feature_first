import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:favorite_details/src/interactor/favorite_details_state.dart';
import 'package:favorites_domain/favorites_domain.dart';

/// An Interactor that manages the favorite details state.
class FavoriteDetailsInteractor extends Cubit<FavoritesDetailsState> {
  /// Construct a [FavoriteDetailsInteractor].
  FavoriteDetailsInteractor({
    required IFavoritesRepository favoritesRepository,
    required GetFavoriteQuery getFavoriteQuery,
    FavoritesDetailsState initialState = const FavoritesDetailsLoading(),
  }) : _favoritesRepository = favoritesRepository,
       _getFavoriteQuery = getFavoriteQuery,
       super(initialState);

  final IFavoritesRepository _favoritesRepository;
  final GetFavoriteQuery _getFavoriteQuery;

  /// Loads and displays a given favorite.
  Future<void> loadFavorite({required String favoriteId}) async {
    emit(const FavoritesDetailsLoading());

    try {
      emit(
        FavoritesDetailsSuccess(
          favorite: await _getFavoriteQuery.get(favoriteId),
        ),
      );
    } on FavoriteNotFoundException catch (_) {
      emit(const FavoriteNotFoundState());
    } on Object catch (e) {
      emit(FavoritesDetailsError(e));
    }
  }

  /// Removes a favorite on behalf of the user.
  Future<void> removeFavorite(String favoriteId) async {
    await _favoritesRepository.removeFavorite(favoriteId);
  }
}
