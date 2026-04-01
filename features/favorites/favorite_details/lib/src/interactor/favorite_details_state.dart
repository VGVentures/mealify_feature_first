import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter/cupertino.dart';

/// Represents the different states of the FavoriteDetailsView.
sealed class FavoritesDetailsState {}

/// The state when the favorite is loading.
class FavoritesDetailsLoading implements FavoritesDetailsState {
  /// Construct the [FavoritesDetailsLoading] object.
  const FavoritesDetailsLoading();
}

/// The state when a [Favorite] is not found.
class FavoriteNotFoundState implements FavoritesDetailsState {
  /// Construct a [FavoriteNotFoundState] object.
  const FavoriteNotFoundState();
}

/// Displayed when a Favorite has successfully loaded.
@immutable
class FavoritesDetailsSuccess implements FavoritesDetailsState {
  /// Construct a [FavoritesDetailsSuccess] object with the given [Favorite].
  const FavoritesDetailsSuccess({required this.favorite});

  /// The loaded favorite.
  final Favorite favorite;

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

/// The state rendered by the UI if an unknown error occurs.
@immutable
class FavoritesDetailsError implements FavoritesDetailsState {
  /// Constructs a [FavoritesDetailsError].
  const FavoritesDetailsError(this.error);

  /// The unknown error.
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
