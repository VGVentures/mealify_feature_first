import 'package:favorites_domain/src/raw_favorite.dart';

/// An object that handles CRUD operations for Favorite objects
abstract interface class IFavoritesRepository {
  /// Get a favorite by id
  Future<RawFavorite?> getFavoriteById(String favoriteId);

  /// Watch a list of all favorites
  Stream<List<String>> watchAllFavoriteIds();

  /// Save a favorite on behalf of the user
  Future<void> addFavorite({
    required String mealId,
    required String drinkId,
  });

  /// Remove a favorite from the user's collection
  Future<void> removeFavorite(String favoriteId);

  /// Remove a favorite from the user's collection by meal + drink id combo
  Future<void> removeFavoriteByMealAndDrinkId({
    required String mealId,
    required String drinkId,
  });

  /// Watches whether a meal + drink combo is a favorite
  Stream<bool> watchIsFavorite({
    required String mealId,
    required String drinkId,
  });
}
