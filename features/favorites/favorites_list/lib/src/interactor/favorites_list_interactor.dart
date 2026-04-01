import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_list/src/interactor/favorites_list_state.dart';

/// An Interactor that manages the favorites list state.
class FavoritesListInteractor extends Cubit<FavoritesListState> {
  /// Construct with all necessary dependencies.
  FavoritesListInteractor({
    required IFavoritesRepository favoritesRepository,
    FavoritesListState initialState = const FavoritesListLoading(),
  }) : _favoritesRepository = favoritesRepository,
       super(initialState);

  final IFavoritesRepository _favoritesRepository;
  late StreamSubscription<List<String>> _allFavoritesSubscription;

  /// Start watching the user's favorites.
  void watchFavoriteIds() {
    _allFavoritesSubscription = _favoritesRepository
        .watchAllFavoriteIds()
        .listen(
          (favorites) {
            emit(FavoritesListSuccess(favorites: favorites));
          },
          onError: (Object e) {
            emit(FavoritesListError(e));
          },
        );
  }

  @override
  Future<void> close() async {
    await _allFavoritesSubscription.cancel();
    return super.close();
  }
}
