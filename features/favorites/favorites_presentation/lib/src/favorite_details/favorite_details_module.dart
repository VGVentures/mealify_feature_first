import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_presentation/src/favorite_details/bloc/favorite_details_cubit.dart';
import 'package:favorites_presentation/src/favorite_details/views/favorite_details_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:provider/provider.dart';

/// The module that loads the favorite details screen and dependencies
class FavoriteDetailsModule extends StatelessWidget {
  /// Construct the module that loads the favorite details
  const FavoriteDetailsModule({
    required this.favoritesRepository,
    required this.mealsRepository,
    required this.drinksRepository,
    required this.id,
    super.key,
  });

  /// The repository for favorites
  final IFavoritesRepository favoritesRepository;

  /// The repository for meals
  final IMealsRepository mealsRepository;

  /// The repository for drinks
  final IDrinksRepository drinksRepository;

  /// The id of the favorite to load
  final String id;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => GetFavoriteQuery(
        mealsRepository: mealsRepository,
        drinksRepository: drinksRepository,
        favoritesRepository: favoritesRepository,
      ),
      child: BlocProvider<FavoriteDetailsCubit>(
        create: (context) {
          return FavoriteDetailsCubit(
            getFavoriteQuery: context.read(),
            favoritesRepository: favoritesRepository,
          );
        },
        child: FavoriteDetailsScreen(id: id),
      ),
    );
  }
}
