import 'package:flutter/foundation.dart';

/// The State for the favorites list.
sealed class FavoritesListState {}

/// The Loading state for the favorites list.
class FavoritesListLoading implements FavoritesListState {
  /// Constructs the favorites loading state.
  const FavoritesListLoading();
}

/// The success state for the favorites list.
@immutable
class FavoritesListSuccess implements FavoritesListState {
  /// The success state for the favorites list.
  const FavoritesListSuccess({required this.favorites});

  /// The list of ids for the user's favorites.
  final List<String> favorites;

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

/// The error state for the favorites list.
@immutable
class FavoritesListError implements FavoritesListState {
  /// Construct an error state with the error object.
  const FavoritesListError(this.error);

  /// The object displayed by the error view.
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
