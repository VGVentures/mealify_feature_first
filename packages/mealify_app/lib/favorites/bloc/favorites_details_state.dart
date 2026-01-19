import 'package:flutter/cupertino.dart';
import 'package:mealify_app/favorites/bloc/populated_favorite.dart';

sealed class FavoritesDetailsState {}

class FavoritesDetailsLoading implements FavoritesDetailsState {
  const FavoritesDetailsLoading();
}

class FavoriteNotFoundState implements FavoritesDetailsState {
  const FavoriteNotFoundState();
}

@immutable
class FavoritesDetailsSuccess implements FavoritesDetailsState {
  const FavoritesDetailsSuccess({required this.favorite});

  final PopulatedFavorite favorite;

  @override
  String toString() {
    return 'FavoritesDetailsSuccess{favorite: $favorite}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesDetailsSuccess &&
          runtimeType == other.runtimeType &&
          favorite == other.favorite;

  @override
  int get hashCode => favorite.hashCode;
}

@immutable
class FavoritesDetailsError implements FavoritesDetailsState {
  const FavoritesDetailsError(this.error);

  final Object error;

  @override
  String toString() {
    return 'FavoritesDetailsError{error: $error}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesDetailsError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}
