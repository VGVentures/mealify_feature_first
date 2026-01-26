import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter/cupertino.dart';

/// The State for the favorites list screen
sealed class FavoritesListState {}

/// The Loading state for the favorites list screen
class FavoritesListLoading implements FavoritesListState {
  /// Constructs the favorites loading screen state
  const FavoritesListLoading();
}

/// The success state for the favorites list screen
@immutable
class FavoritesListSuccess implements FavoritesListState {
  /// The success state for the favorites list screen
  const FavoritesListSuccess({required this.favorites});

  /// The list of favorites the screen will display
  final List<Favorite> favorites;

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

/// The error state for the favorites list screen
@immutable
class FavoritesListError implements FavoritesListState {
  /// Construct an error state with the error object
  const FavoritesListError(this.error);

  /// The object displayed by the error screen
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
