import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/app_router/routes.dart';
import 'package:mealify_app/favorites/bloc/favorites_list_cubit.dart';
import 'package:mealify_app/favorites/bloc/favorites_list_state.dart';
import 'package:mealify_app/favorites/bloc/populated_favorite.dart';
import 'package:mealify_app/l10n/gen/app_localizations.dart';
import 'package:mealify_app/widgets/error_view.dart';
import 'package:mealify_app/widgets/loading_view.dart';

class FavoritesListScreen extends StatefulWidget {
  const FavoritesListScreen({super.key});

  @override
  State<FavoritesListScreen> createState() => _FavoritesListScreenState();
}

class _FavoritesListScreenState extends State<FavoritesListScreen> {
  @override
  void initState() {
    context.read<FavoritesListCubit>().watchFavorites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FavoritesListCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).favoritesLabel),
      ),
      body: switch (state) {
        FavoritesListLoading() => const LoadingView(),
        FavoritesListError(:final error) => ErrorView(error: error),
        FavoritesListSuccess(:final favorites) => _SuccessView(
          favorites: favorites,
        ),
      },
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({required this.favorites});

  final List<PopulatedFavorite> favorites;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        final favorite = favorites[index];

        return Dismissible(
          key: Key('favorite_dismissible_${favorite.favoriteId}'),
          onDismissed: (_) async {
            await context.read<FavoritesListCubit>().removeFavorite(
              favorite.favoriteId,
            );
          },
          background: const ColoredBox(color: Colors.red),
          child: ListTile(
            title: Text(favorite.meal.title),
            subtitle: Text(favorite.drink.title),
            leading: Image.network(favorite.meal.thumbnail),
            onTap: () {
              FavoriteDetailsRoute(id: favorite.favoriteId).go(context);
            },
          ),
        );
      },
    );
  }
}
