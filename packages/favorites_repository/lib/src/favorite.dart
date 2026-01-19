import 'package:flutter/cupertino.dart';

/// The Favorite in the domain layer. It has no concept of any type of
/// serialization whether to API nor DB. Those are handled by their respective
/// layers.
@immutable
class Favorite {
  /// Create a favorite
  const Favorite({
    required this.id,
    required this.mealId,
    required this.drinkId,
    required this.createdAt,
  });

  /// The id of the favorite
  final String id;

  /// The meal
  final String mealId;

  /// The drink
  final String drinkId;

  /// The time it the favorite was created
  final DateTime createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Favorite &&
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
Favorite {
  id: $id, 
  mealId: $mealId, 
  drinkId: $drinkId, 
  createdAt: $createdAt
}''';
  }
}
