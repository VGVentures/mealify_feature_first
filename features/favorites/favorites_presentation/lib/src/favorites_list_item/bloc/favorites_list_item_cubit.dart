import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_presentation/src/favorites_list_item/bloc/favorites_list_item_state.dart';

/// A class that manages the users list of favorites
class FavoritesListItemCubit extends Cubit<FavoritesListItemState> {
  /// Construct a Favorites list with all of the necessary dependencies
  FavoritesListItemCubit({
    required IFavoritesRepository favoritesRepository,
    required GetFavoriteQuery getFavoriteQuery,
    FavoritesListItemState initialState = const FavoritesListItemLoading(),
  }) : _favoritesRepository = favoritesRepository,
       _getFavoriteQuery = getFavoriteQuery,
       super(initialState);

  final IFavoritesRepository _favoritesRepository;
  final GetFavoriteQuery _getFavoriteQuery;

  /// Load a favorite by id
  Future<void> loadFavorite(String favoriteId) async {
    emit(const FavoritesListItemLoading());

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

  /// Remove a favorite on behalf of the user
  Future<void> removeFavorite(String favoriteId) async {
    await _favoritesRepository.removeFavorite(favoriteId);
  }
}
