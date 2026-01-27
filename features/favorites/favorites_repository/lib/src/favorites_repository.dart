import 'package:favorites_database/favorites_database.dart' as db;
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_repository/src/db_to_domain_favorite_converter.dart';

/// A class that provides access to a user's favorites
class FavoritesRepository implements IFavoritesRepository {
  /// Constructs the favorites repository with database access
  FavoritesRepository({
    required db.FavoritesDatabase favoritesDb,
    DbToDomainFavoriteConverter dbToDomainFavoriteConverter =
        const DbToDomainFavoriteConverter(),
  }) : _favoritesDb = favoritesDb,
       _dbToDomainFavoriteConverter = dbToDomainFavoriteConverter;

  final db.FavoritesDatabase _favoritesDb;
  final DbToDomainFavoriteConverter _dbToDomainFavoriteConverter;

  @override
  Future<RawFavorite?> getFavoriteById(String favoriteId) async {
    final dbFavorite = await _favoritesDb.getFavorite(favoriteId);

    if (dbFavorite == null) return null;

    return _dbToDomainFavoriteConverter.convert(dbFavorite);
  }

  @override
  Stream<List<String>> watchAllFavoriteIds() => _favoritesDb.watchAllIds();

  @override
  Future<void> addFavorite({
    required String mealId,
    required String drinkId,
  }) {
    return _favoritesDb.addFavorite(mealId: mealId, drinkId: drinkId);
  }

  @override
  Future<void> removeFavorite(String favoriteId) {
    return _favoritesDb.removeFavorite(favoriteId);
  }

  @override
  Future<void> removeFavoriteByMealAndDrinkId({
    required String mealId,
    required String drinkId,
  }) {
    return _favoritesDb.removeFavoriteByMealAndDrinkId(
      mealId: mealId,
      drinkId: drinkId,
    );
  }

  @override
  Stream<bool> watchIsFavorite({
    required String mealId,
    required String drinkId,
  }) {
    return _favoritesDb.watchIsFavorite(mealId, drinkId);
  }
}
