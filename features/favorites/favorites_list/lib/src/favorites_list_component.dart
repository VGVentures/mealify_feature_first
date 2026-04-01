import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_list_item/favorites_list_item.dart';
import 'package:meals_domain/meals_domain.dart';

/// The Component for the FavoritesList RIB.
///
/// Implements [FavoritesListItemComponent] so it can be passed directly as the
/// child's Component — providing compile-time safety for the dependency
/// contract between parent and child.
class FavoritesListComponent implements FavoritesListItemComponent {
  /// Construct the component with all required repositories.
  FavoritesListComponent({
    required this.favoritesRepository,
    required this.mealsRepository,
    required this.drinksRepository,
  }) : getFavoriteQuery = GetFavoriteQuery(
         mealsRepository: mealsRepository,
         drinksRepository: drinksRepository,
         favoritesRepository: favoritesRepository,
       );

  /// The repository for accessing favorites data.
  @override
  final IFavoritesRepository favoritesRepository;

  /// The repository for accessing meals data.
  final IMealsRepository mealsRepository;

  /// The repository for accessing drinks data.
  final IDrinksRepository drinksRepository;

  @override
  final GetFavoriteQuery getFavoriteQuery;
}
