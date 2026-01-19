import 'package:favorites_repository/favorites_repository.dart';
import 'package:favorites_repository/src/db_to_domain_favorite_converter.dart';
import 'package:mealify_database/mealify_database.dart' as db;

/// A class that provides access to a user's favorites
class FavoritesRepository {
  /// Constructs the favorites repository with database access
  FavoritesRepository({
    required db.FavoritesDao favoritesDao,
    DbToDomainFavoriteConverter dbToDomainFavoriteConverter =
        const DbToDomainFavoriteConverter(),
  }) : _favoritesDao = favoritesDao,
       _dbToDomainFavoriteConverter = dbToDomainFavoriteConverter;

  final db.FavoritesDao _favoritesDao;
  final DbToDomainFavoriteConverter _dbToDomainFavoriteConverter;

  /// Get a favorite by id
  Future<Favorite?> getFavoriteById(String favoriteId) async {
    final dbFavorite = await _favoritesDao.getFavorite(favoriteId);

    if (dbFavorite == null) return null;

    return _dbToDomainFavoriteConverter.convert(dbFavorite);
  }

  /// Watch a list of all favorites
  Stream<List<Favorite>> watchAllFavorites() {
    return _favoritesDao.watchAll().map(
      (favorites) => favorites
          .map(_dbToDomainFavoriteConverter.convert)
          .toList(growable: false),
    );
  }

  /// Save a favorite on behalf of the user
  Future<void> addFavorite({
    required String mealId,
    required String drinkId,
  }) {
    return _favoritesDao.addFavorite(mealId: mealId, drinkId: drinkId);
  }

  /// Remove a favorite from the user's collection
  Future<void> removeFavorite(String favoriteId) {
    return _favoritesDao.removeFavorite(favoriteId);
  }

  /// Remove a favorite from the user's collection by meal + drink id combo
  Future<void> removeFavoriteByMealAndDrinkId({
    required String mealId,
    required String drinkId,
  }) {
    return _favoritesDao.removeFavoriteByMealAndDrinkId(
      mealId: mealId,
      drinkId: drinkId,
    );
  }

  /// Returns whether or not a meal + drink combo is a favorite
  Future<bool> isFavorite({required String mealId, required String drinkId}) {
    return _favoritesDao.getIsFavorite(mealId, drinkId);
  }

  /// Watches whether a meal + drink combo is a favorite
  Stream<bool> watchIsFavorite({
    required String mealId,
    required String drinkId,
  }) {
    return _favoritesDao.watchIsFavorite(mealId, drinkId);
  }
}
