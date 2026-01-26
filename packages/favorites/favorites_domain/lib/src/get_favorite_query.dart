import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:meta/meta.dart';

/// A class that uses the Drinks, Meals, and Favorites repositories to populate
/// and return a [Favorite] by a given id.
class GetFavoriteQuery {
  /// Construct a [GetFavoriteQuery] with the necessary dependencies
  GetFavoriteQuery({
    required IMealsRepository mealsRepository,
    required IDrinksRepository drinksRepository,
    required IFavoritesRepository favoritesRepository,
  }) : _mealsRepository = mealsRepository,
       _drinksRepository = drinksRepository,
       _favoritesRepository = favoritesRepository;

  final IMealsRepository _mealsRepository;
  final IDrinksRepository _drinksRepository;
  final IFavoritesRepository _favoritesRepository;

  /// Get a populated [Favorite] with [Meal] and [Drink] information by id.
  Future<Favorite> get(String favoriteId) async {
    final rawFavorite = await _favoritesRepository.getFavoriteById(favoriteId);

    if (rawFavorite == null) {
      throw FavoriteNotFoundException(favoriteId);
    }

    return Favorite(
      id: favoriteId,
      meal: await _mealsRepository.getMealById(rawFavorite.mealId),
      drink: await _drinksRepository.getDrinkById(rawFavorite.drinkId),
      createdAt: rawFavorite.createdAt,
    );
  }
}

/// Thrown when a favorite cannot be found
@immutable
class FavoriteNotFoundException implements Exception {
  /// Construct a [FavoriteNotFoundException] with the id
  const FavoriteNotFoundException(this.favoriteId);

  /// The id of the favorite that cannot be found
  final String favoriteId;

  @override
  String toString() {
    return 'FavoriteNotFoundException{favoriteId: $favoriteId}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteNotFoundException &&
          runtimeType == other.runtimeType &&
          favoriteId == other.favoriteId;

  @override
  int get hashCode => favoriteId.hashCode;
}
