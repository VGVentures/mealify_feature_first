import 'package:drink_details/drink_details_component.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorite_details/favorite_details_component.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_list/favorites_list_component.dart';
import 'package:ideas/ideas_component.dart';
import 'package:meal_details/meal_details_component.dart';
import 'package:meals_domain/meals_domain.dart';

/// The root Component that provides all dependencies to child RIBs.
///
/// [AppComponent] implements each child RIB's Component interface, providing
/// compile-time safety for dependency contracts from root to leaf.
class AppComponent
    implements
        DrinkDetailsComponent,
        FavoriteDetailsComponent,
        FavoritesListComponent,
        IdeasComponent,
        MealDetailsComponent {
  /// Construct the root component with all required repositories.
  AppComponent({
    required this.drinksRepository,
    required this.favoritesRepository,
    required this.mealsRepository,
  }) : getFavoriteQuery = GetFavoriteQuery(
         mealsRepository: mealsRepository,
         drinksRepository: drinksRepository,
         favoritesRepository: favoritesRepository,
       );

  @override
  final IDrinksRepository drinksRepository;

  @override
  final IFavoritesRepository favoritesRepository;

  @override
  final IMealsRepository mealsRepository;

  @override
  final GetFavoriteQuery getFavoriteQuery;
}
