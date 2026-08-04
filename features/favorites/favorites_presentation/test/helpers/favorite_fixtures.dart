import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:meals_domain/meals_domain.dart';

/// Builds a [Favorite] whose ids are derived from [id], so a test can tell one
/// row's data from another's.
Favorite favoriteFixture(String id) => Favorite(
  id: id,
  meal: Meal(
    id: 'meal_$id',
    title: 'Meal $id',
    instructions: 'Cook it.',
    thumbnail: 'https://example.com/meal_$id.png',
  ),
  drink: Drink(
    id: 'drink_$id',
    title: 'Drink $id',
    instructions: 'Pour it.',
    thumbnail: 'https://example.com/drink_$id.png',
  ),
  createdAt: DateTime.utc(2026, 8, 4),
);
