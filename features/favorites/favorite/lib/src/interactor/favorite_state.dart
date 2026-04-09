import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter/foundation.dart';

/// The state for a Favorite data provider.
sealed class FavoriteState {}

/// The loading state for a Favorite data provider.
class FavoriteLoading implements FavoriteState {
  /// Constructs the loading state.
  const FavoriteLoading();
}

/// The state when a favorite is not found.
class FavoriteNotFound implements FavoriteState {
  /// Constructs the not-found state.
  const FavoriteNotFound();
}

/// The success state for a Favorite data provider.
@immutable
class FavoriteSuccess implements FavoriteState {
  /// Constructs the success state with the loaded [Favorite].
  const FavoriteSuccess({required this.favorite});

  /// The loaded favorite.
  final Favorite favorite;

  @override
  String toString() => 'FavoriteSuccess{favorite: $favorite}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteSuccess &&
          runtimeType == other.runtimeType &&
          favorite == other.favorite;

  @override
  int get hashCode => favorite.hashCode;
}

/// The error state for a Favorite data provider.
@immutable
class FavoriteError implements FavoriteState {
  /// Constructs the error state with the error object.
  const FavoriteError(this.error);

  /// The error object.
  final Object error;

  @override
  String toString() => 'FavoriteError{error: $error}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}
