import 'package:flutter/cupertino.dart';
import 'package:mealify_app/favorites/bloc/populated_favorite.dart';

sealed class FavoritesListState {}

class FavoritesListLoading implements FavoritesListState {
  const FavoritesListLoading();
}

@immutable
class FavoritesListSuccess implements FavoritesListState {
  const FavoritesListSuccess({required this.favorites});

  final List<PopulatedFavorite> favorites;

  @override
  String toString() {
    return 'FavoritesListSuccess{favorites: $favorites}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesListSuccess &&
          runtimeType == other.runtimeType &&
          favorites == other.favorites;

  @override
  int get hashCode => favorites.hashCode;
}

@immutable
class FavoritesListError implements FavoritesListState {
  const FavoritesListError(this.error);

  final Object error;

  @override
  String toString() {
    return 'FavoritesListError{error: $error}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesListError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}
