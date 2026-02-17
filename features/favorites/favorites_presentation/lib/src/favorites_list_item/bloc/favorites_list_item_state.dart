import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter/cupertino.dart';

/// The State for the favorites list screen
sealed class FavoritesListItemState {}

/// The Loading state for the favorites list screen
class FavoritesListItemLoading implements FavoritesListItemState {
  /// Constructs the favorites loading screen state
  const FavoritesListItemLoading();
}

/// The success state for the favorites list screen
@immutable
class FavoritesListItemSuccess implements FavoritesListItemState {
  /// The success state for the favorites list screen
  const FavoritesListItemSuccess({required this.favorite});

  /// The list of ids for the user's favorites. The individual ListTile is
  /// responsible for loading data about the Favorite. This is useful for
  /// pagination scenarios
  final Favorite favorite;

  @override
  String toString() {
    return 'FavoritesListSuccess{favorite: $favorite}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesListItemSuccess &&
          runtimeType == other.runtimeType &&
          favorite == other.favorite;

  @override
  int get hashCode => favorite.hashCode;
}

/// The error state for the favorites list screen
@immutable
class FavoritesListItemError implements FavoritesListItemState {
  /// Construct an error state with the error object
  const FavoritesListItemError(this.error);

  /// The object displayed by the error screen
  final Object error;

  @override
  String toString() {
    return 'FavoritesListItemError{error: $error}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesListItemError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}
