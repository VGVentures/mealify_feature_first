import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:meals_domain/meals_domain.dart';

/// A class that uses the Drinks, Meals, and Favorites repositories to populate
/// and return a list of all the users [Favorite]s.
class WatchAllFavoritesQuery {
  /// Construct a [WatchAllFavoritesQuery] with the required data sources
  WatchAllFavoritesQuery({
    required IMealsRepository mealsRepository,
    required IDrinksRepository drinksRepository,
    required IFavoritesRepository favoritesRepository,
  }) : _mealsRepository = mealsRepository,
       _drinksRepository = drinksRepository,
       _favoritesRepository = favoritesRepository;

  final IMealsRepository _mealsRepository;
  final IDrinksRepository _drinksRepository;
  final IFavoritesRepository _favoritesRepository;

  /// Watches all favorites
  Stream<List<Favorite>> watch() {
    return _favoritesRepository.watchAllFavorites().asyncMap((
      rawFavorites,
    ) async {
      return [
        for (final rawFavorite in rawFavorites)
          Favorite(
            id: rawFavorite.id,
            meal: await _mealsRepository.getMealById(rawFavorite.mealId),
            drink: await _drinksRepository.getDrinkById(rawFavorite.drinkId),
            createdAt: rawFavorite.createdAt,
          ),
      ];
    });
  }
}
