import 'package:flutter/foundation.dart';

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

  /// The list of ids for the user's favorites. The individual ListTile is
  /// responsible for loading data about the Favorite. This is useful for
  /// pagination scenarios
  final List<String> favorites;

  @override
  String toString() {
    return 'FavoritesListSuccess{favorites: $favorites}';
  }

  // `listEquals` rather than `==`: Dart's `List` does not override equality, so
  // comparing the lists directly compares identity, every emission from the
  // favorites stream is then a distinct state, and `Cubit.emit` can no longer
  // drop a re-emission that leaves the visible ids unchanged.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesListSuccess &&
          runtimeType == other.runtimeType &&
          listEquals(favorites, other.favorites);

  @override
  int get hashCode => Object.hashAll(favorites);
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
