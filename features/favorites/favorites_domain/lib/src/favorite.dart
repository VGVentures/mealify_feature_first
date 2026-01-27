import 'package:drinks_domain/drinks_domain.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:meta/meta.dart';

/// A favorite that is hydrated with a complete [Meal] and [Drink] object.
@immutable
class Favorite {
  /// Construct a favorite with an [id], [meal], [drink], and [createdAt]
  /// timestamp
  const Favorite({
    required this.id,
    required this.meal,
    required this.drink,
    required this.createdAt,
  });

  /// The id of the favorite
  final String id;

  /// The [Meal] contained within the Favorite
  final Meal meal;

  /// The [Drink] contained within the Favorite
  final Drink drink;

  /// The time the favorite was initially saved.
  final DateTime createdAt;

  @override
  String toString() {
    // No need to spread this over several lines
    // ignore: lines_longer_than_80_chars
    return 'PopulatedFavorite{favoriteId: $id, meal: $meal, drink: $drink, createdAt: $createdAt}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Favorite &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          meal == other.meal &&
          drink == other.drink &&
          createdAt == other.createdAt;

  @override
  int get hashCode => Object.hash(id, meal, drink, createdAt);
}
