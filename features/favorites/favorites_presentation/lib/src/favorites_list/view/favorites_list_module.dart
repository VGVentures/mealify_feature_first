import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_presentation/src/favorites_list/bloc/favorites_list_cubit.dart';
import 'package:favorites_presentation/src/favorites_list/view/favorites_list_screen.dart';
import 'package:favorites_presentation/src/favorites_list/view/on_favorite_tapped.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:provider/provider.dart';

/// The module that loads the favorites list screen and dependencies
class FavoritesListModule extends StatelessWidget {
  /// Constructs the module that loads the favorites list and dependencies
  const FavoritesListModule({
    required this.favoritesRepository,
    required this.mealsRepository,
    required this.drinksRepository,
    required this.onFavoriteTapped,
    super.key,
  });

  /// The repository for favorites
  final IFavoritesRepository favoritesRepository;

  /// The repository for meals
  final IMealsRepository mealsRepository;

  /// The repository for drinks
  final IDrinksRepository drinksRepository;

  /// The callback fired when a favorite is tapped
  final OnFavoriteTapped onFavoriteTapped;

  @override
  Widget build(BuildContext context) {
    return Provider<GetFavoriteQuery>(
      create: (context) => GetFavoriteQuery(
        mealsRepository: mealsRepository,
        drinksRepository: drinksRepository,
        favoritesRepository: favoritesRepository,
      ),
      child: BlocProvider<FavoritesListCubit>(
        create: (BuildContext context) {
          return FavoritesListCubit(
            favoritesRepository: favoritesRepository,
          );
        },
        child: FavoritesListScreen(
          onFavoriteTapped: onFavoriteTapped,
        ),
      ),
    );
  }
}
