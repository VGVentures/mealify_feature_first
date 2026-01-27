import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_presentation/src/favorite_details/bloc/favorites_details_cubit.dart';
import 'package:favorites_presentation/src/favorite_details/view/favorite_details_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

/// The module that loads the favorite details screen and dependencies
class FavoriteDetailsModule extends StatelessWidget {
  /// Construct the module that loads the favorite details
  const FavoriteDetailsModule({required this.id, super.key});

  /// The id of the favorite to load
  final String id;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => GetFavoriteQuery(
        mealsRepository: context.read(),
        drinksRepository: context.read(),
        favoritesRepository: context.read(),
      ),
      child: BlocProvider<FavoritesDetailsCubit>(
        create: (BuildContext context) {
          return FavoritesDetailsCubit(
            getFavoriteQuery: context.read(),
            favoritesRepository: context.read(),
          );
        },
        child: FavoriteDetailsScreen(id: id),
      ),
    );
  }
}
