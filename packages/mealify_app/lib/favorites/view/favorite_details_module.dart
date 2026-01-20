import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/favorites/bloc/favorites_details_cubit.dart';
import 'package:mealify_app/favorites/view/favorite_details_screen.dart';

class FavoriteDetailsModule extends StatelessWidget {
  const FavoriteDetailsModule({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoritesDetailsCubit>(
      create: (BuildContext context) {
        return FavoritesDetailsCubit(
          mealsRepository: context.read(),
          drinksRepository: context.read(),
          favoritesRepository: context.read(),
        );
      },
      child: FavoriteDetailsScreen(id: id),
    );
  }
}
