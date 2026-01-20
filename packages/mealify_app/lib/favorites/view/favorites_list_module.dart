import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/favorites/bloc/favorites_list_cubit.dart';
import 'package:mealify_app/favorites/view/favorites_list_screen.dart';

class FavoritesListModule extends StatelessWidget {
  const FavoritesListModule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoritesListCubit>(
      create: (BuildContext context) {
        return FavoritesListCubit(
          mealsRepository: context.read(),
          drinksRepository: context.read(),
          favoritesRepository: context.read(),
        );
      },
      child: const FavoritesListScreen(),
    );
  }
}
