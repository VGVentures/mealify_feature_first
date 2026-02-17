import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_presentation/src/favorites_list/bloc/favorites_list_state.dart';

/// A class that manages the users list of favorites
class FavoritesListCubit extends Cubit<FavoritesListState> {
  /// Construct a Favorites list with all of the necessary dependencies
  FavoritesListCubit({
    required IFavoritesRepository favoritesRepository,
    FavoritesListState initialState = const FavoritesListLoading(),
  }) : _favoritesRepository = favoritesRepository,
       super(initialState);

  final IFavoritesRepository _favoritesRepository;
  late StreamSubscription<List<String>> _allFavoritesSubscription;

  /// Start watching the users favorites
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
