import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_presentation/src/favorites_list/bloc/favorites_list_cubit.dart';
import 'package:favorites_presentation/src/favorites_list/bloc/favorites_list_state.dart';
import 'package:favorites_presentation/src/favorites_list/view/on_favorite_tapped.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';

/// A screen that displays a list of the user's favorites
class FavoritesListScreen extends StatefulWidget {
  /// Construct a screen that displays a list of the user's favorites
  const FavoritesListScreen({required this.onFavoriteTapped, super.key});

  /// The callback triggered when a Favorite is tapped
  final OnFavoriteTapped onFavoriteTapped;

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
        title: Text(context.l10n.favoritesLabel),
      ),
      body: switch (state) {
        FavoritesListLoading() => const LoadingView(),
        FavoritesListError(:final error) => ErrorView(error: error),
        FavoritesListSuccess(:final favorites) => _SuccessView(
          favorites: favorites,
          onFavoriteTapped: widget.onFavoriteTapped,
        ),
      },
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.favorites,
    required this.onFavoriteTapped,
  });

  final List<Favorite> favorites;
  final OnFavoriteTapped onFavoriteTapped;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        final favorite = favorites[index];

        return Dismissible(
          key: Key('favorite_dismissible_${favorite.id}'),
          onDismissed: (_) async {
            await context.read<FavoritesListCubit>().removeFavorite(
              favorite.id,
            );
          },
          background: Container(
            color: Theme.of(context).colorScheme.error,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.delete,
              color: Theme.of(context).colorScheme.onError,
            ),
          ),
          child: ListTile(
            title: Text(favorite.meal.title),
            subtitle: Text(favorite.drink.title),
            leading: Image.network(favorite.meal.thumbnail),
            onTap: () => onFavoriteTapped(favorite),
          ),
        );
      },
    );
  }
}
