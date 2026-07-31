import 'package:favorites_domain/src/models/favorite.dart';
import 'package:favorites_domain/src/repositories/i_favorites_repository.dart';
import 'package:favorites_domain/src/use_cases/get_favorite_query.dart';
import 'package:meta/meta.dart';

/// A favorite as the favorites feature stores it, holding a [mealId] and a
/// [drinkId] rather than the meal and drink themselves.
///
/// This is the shape [IFavoritesRepository] reads and writes. The favorites
/// data layer knows how to store a favorite, but it does not know how to fetch
/// a meal or a drink, so those stay as ids here. [GetFavoriteQuery] combines
/// this with the meals and drinks repositories to produce a [Favorite], with
/// both populated.
///
/// It has no concept of serialization, to an API or a database. Those are
/// handled by their respective layers.
@immutable
class FavoriteSummary {
  /// Create a favorite summary
  const FavoriteSummary({
    required this.id,
    required this.mealId,
    required this.drinkId,
    required this.createdAt,
  });

  /// The id of the favorite
  final String id;

  /// The id of the favorited meal, resolved through the meals repository.
  final String mealId;

  /// The id of the favorited drink, resolved through the drinks repository.
  final String drinkId;

  /// The time the favorite was created
  final DateTime createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteSummary &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          mealId == other.mealId &&
          drinkId == other.drinkId &&
          createdAt == other.createdAt;

  @override
  int get hashCode => Object.hash(id, mealId, drinkId, createdAt);

  @override
  String toString() {
    return '''
FavoriteSummary {
  id: $id,
  mealId: $mealId,
  drinkId: $drinkId,
  createdAt: $createdAt
}''';
  }
}
