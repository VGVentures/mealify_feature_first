import 'package:favorites_presentation/src/favorites_list/bloc/favorites_list_cubit.dart';
import 'package:favorites_presentation/src/favorites_list/bloc/favorites_list_state.dart';
import 'package:favorites_presentation/src/favorites_list/views/on_favorite_tapped.dart';
import 'package:favorites_presentation/src/favorites_list_item/views/favorites_list_item.dart';
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
        return FavoriteListItem(
          key: Key('favorite_list_tile_$favoriteId'),
          favoriteId: favoriteId,
          onFavoriteTapped: onFavoriteTapped,
        );
      },
    );
  }
}
