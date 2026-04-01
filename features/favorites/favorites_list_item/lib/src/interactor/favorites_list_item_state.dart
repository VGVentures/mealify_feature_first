import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter/cupertino.dart';

/// The State for the favorites list item.
sealed class FavoritesListItemState {}

/// The Loading state for the favorites list item.
class FavoritesListItemLoading implements FavoritesListItemState {
  /// Constructs the favorites loading state.
  const FavoritesListItemLoading();
}

/// The success state for the favorites list item.
@immutable
class FavoritesListItemSuccess implements FavoritesListItemState {
  /// The success state for the favorites list item.
  const FavoritesListItemSuccess({required this.favorite});

  /// The loaded favorite.
  final Favorite favorite;

  @override
  String toString() {
    return 'FavoritesListItemSuccess{favorite: $favorite}';
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

/// The error state for the favorites list item.
@immutable
class FavoritesListItemError implements FavoritesListItemState {
  /// Construct an error state with the error object.
  const FavoritesListItemError(this.error);

  /// The object displayed by the error view.
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
