import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_list_item/src/interactor/favorites_list_item_state.dart';

/// An Interactor that manages the state for a single favorites list item.
class FavoritesListItemInteractor extends Cubit<FavoritesListItemState> {
  /// Construct with all necessary dependencies.
  FavoritesListItemInteractor({
    required IFavoritesRepository favoritesRepository,
    required GetFavoriteQuery getFavoriteQuery,
    FavoritesListItemState initialState = const FavoritesListItemLoading(),
  }) : _favoritesRepository = favoritesRepository,
       _getFavoriteQuery = getFavoriteQuery,
       super(initialState);

  final IFavoritesRepository _favoritesRepository;
  final GetFavoriteQuery _getFavoriteQuery;

  /// Load a favorite by id.
  Future<void> loadFavorite(String favoriteId) async {
    emit(const FavoritesListItemLoading());

    await Future<void>.delayed(const Duration(seconds: 1));

    try {
      emit(
        FavoritesListItemSuccess(
          favorite: await _getFavoriteQuery.get(favoriteId),
        ),
      );
    } on Object catch (e) {
      emit(FavoritesListItemError(e));
    }
  }

  /// Remove a favorite on behalf of the user.
  Future<void> removeFavorite(String favoriteId) async {
    await _favoritesRepository.removeFavorite(favoriteId);
  }
}
