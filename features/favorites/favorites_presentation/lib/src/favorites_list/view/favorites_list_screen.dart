import 'dart:async';

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
    context.read<FavoritesListCubit>().watchFavoriteIds();
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
          favoriteIds: favorites,
          onFavoriteTapped: widget.onFavoriteTapped,
        ),
      },
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.favoriteIds,
    required this.onFavoriteTapped,
  });

  final List<String> favoriteIds;
  final OnFavoriteTapped onFavoriteTapped;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favoriteIds.length,
      itemBuilder: (context, index) {
        final favoriteId = favoriteIds[index];
        return _FavoriteListTile(
          key: Key('favorite_list_tile_$favoriteId'),
          favoriteId: favoriteId,
          onFavoriteTapped: onFavoriteTapped,
        );
      },
    );
  }
}

/// A list tile responsible for loading the necessary data for showing a
/// favorite. This works better if we need to move to a paginated list of
/// favorites, rather than loading absolutely everything into memory.
class _FavoriteListTile extends StatefulWidget {
  const _FavoriteListTile({
    required this.onFavoriteTapped,
    required this.favoriteId,
    required super.key,
  });

  final String favoriteId;
  final OnFavoriteTapped onFavoriteTapped;

  @override
  State<_FavoriteListTile> createState() => _FavoriteListTileState();
}

class _FavoriteListTileState extends State<_FavoriteListTile> {
  late Future<Favorite> _favoriteFuture;

  @override
  void initState() {
    super.initState();
    _favoriteFuture = context.read<GetFavoriteQuery>().get(widget.favoriteId);
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('favorite_dismissible_${widget.favoriteId}'),
      onDismissed: (_) async {
        await context.read<FavoritesListCubit>().removeFavorite(
          widget.favoriteId,
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
      child: FutureBuilder<Favorite>(
        future: _favoriteFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final favorite = snapshot.data!;
            return ListTile(
              title: Text(favorite.meal.title),
              subtitle: Text(favorite.drink.title),
              leading: Image.network(favorite.meal.thumbnail),
              onTap: () => widget.onFavoriteTapped(favorite),
            );
          }

          if (snapshot.hasError) {
            return ListTile(
              title: Text('${snapshot.error!}'),
            );
          }

          return const ListTile();
        },
      ),
    );
  }
}
