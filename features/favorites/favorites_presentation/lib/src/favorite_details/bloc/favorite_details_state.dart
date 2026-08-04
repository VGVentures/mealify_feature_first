import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter/cupertino.dart';

/// Represents the different states of the favorite details screen
sealed class FavoriteDetailsState {}

/// The state when the favorite is loading
class FavoriteDetailsLoading implements FavoriteDetailsState {
  /// Construct the [FavoriteDetailsLoading] object
  const FavoriteDetailsLoading();
}

/// The state when a [Favorite] is not found
class FavoriteDetailsNotFound implements FavoriteDetailsState {
  /// Construct a [FavoriteDetailsNotFound] object
  const FavoriteDetailsNotFound();
}

/// Displayed when a Favorite has successfully loaded
@immutable
class FavoriteDetailsSuccess implements FavoriteDetailsState {
  /// Construct a [FavoriteDetailsSuccess] object with the given [Favorite]
  const FavoriteDetailsSuccess({required this.favorite});

  /// The loaded favorite
  final Favorite favorite;

  @override
  String toString() {
    return 'FavoriteDetailsSuccess{favorite: $favorite}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteDetailsSuccess &&
          runtimeType == other.runtimeType &&
          favorite == other.favorite;

  @override
  int get hashCode => favorite.hashCode;
}

/// The state rendered by the UI if an unknown error occurs
@immutable
class FavoriteDetailsError implements FavoriteDetailsState {
  /// Constructs a [FavoriteDetailsError]
  const FavoriteDetailsError(this.error);

  /// The unknown error
  final Object error;

  @override
  String toString() {
    return 'FavoriteDetailsError{error: $error}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteDetailsError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}
