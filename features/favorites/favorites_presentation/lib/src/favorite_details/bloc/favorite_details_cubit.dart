import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_presentation/src/favorite_details/bloc/favorite_details_state.dart';

/// A cubit that manages the Favorite Details Screen
class FavoriteDetailsCubit extends Cubit<FavoriteDetailsState> {
  /// Construct a [FavoriteDetailsCubit]
  FavoriteDetailsCubit({
    required IFavoritesRepository favoritesRepository,
    required GetFavoriteQuery getFavoriteQuery,
    FavoriteDetailsState initialState = const FavoriteDetailsLoading(),
  }) : _favoritesRepository = favoritesRepository,
       _getFavoriteQuery = getFavoriteQuery,
       super(initialState);

  final IFavoritesRepository _favoritesRepository;
  final GetFavoriteQuery _getFavoriteQuery;

  /// Loads and displays a given favorite
  Future<void> loadFavorite({required String favoriteId}) async {
    emit(const FavoriteDetailsLoading());

    try {
      emit(
        FavoriteDetailsSuccess(
          favorite: await _getFavoriteQuery.get(favoriteId),
        ),
      );
    } on FavoriteNotFoundException catch (_) {
      emit(const FavoriteDetailsNotFound());
    } on Object catch (e) {
      emit(FavoriteDetailsError(e));
    }
  }

  /// Removes a favorite on behalf of the user
  Future<void> removeFavorite(String favoriteId) async {
    await _favoritesRepository.removeFavorite(favoriteId);
  }
}
