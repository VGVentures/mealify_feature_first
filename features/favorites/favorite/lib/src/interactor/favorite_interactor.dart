import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:favorite/src/interactor/favorite_state.dart';
import 'package:favorites_domain/favorites_domain.dart';

/// An Interactor that fetches a single Favorite by id.
class FavoriteInteractor extends Cubit<FavoriteState> {
  /// Construct with the required repository.
  FavoriteInteractor({
    required IFavoritesRepository favoritesRepository,
    FavoriteState initialState = const FavoriteLoading(),
  }) : _favoritesRepository = favoritesRepository,
       super(initialState);

  final IFavoritesRepository _favoritesRepository;

  /// Load a favorite by id.
  Future<void> loadFavorite(String favoriteId) async {
    emit(const FavoriteLoading());

    try {
      final favorite = await _favoritesRepository.getFavoriteById(favoriteId);

      if (favorite == null) {
        emit(const FavoriteNotFound());
      } else {
        emit(FavoriteSuccess(favorite: favorite));
      }
    } on Object catch (e) {
      emit(FavoriteError(e));
    }
  }
}
