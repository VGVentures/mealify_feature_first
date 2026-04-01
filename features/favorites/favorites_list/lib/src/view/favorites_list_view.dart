import 'package:favorites_list/src/favorites_list_component.dart';
import 'package:favorites_list/src/interactor/favorites_list_interactor.dart';
import 'package:favorites_list/src/interactor/favorites_list_state.dart';
import 'package:favorites_list_item/favorites_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:provider/provider.dart';

/// A view that displays a list of the user's favorites.
class FavoritesListView extends StatefulWidget {
  /// Construct a view that displays a list of the user's favorites.
  const FavoritesListView({super.key});

  @override
  State<FavoritesListView> createState() => _FavoritesListViewState();
}

class _FavoritesListViewState extends State<FavoritesListView> {
  @override
  void initState() {
    context.read<FavoritesListInteractor>().watchFavoriteIds();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FavoritesListInteractor>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.favoritesLabel),
      ),
      body: switch (state) {
        FavoritesListLoading() => const LoadingView(),
        FavoritesListError(:final error) => ErrorView(error: error),
        FavoritesListSuccess(:final favorites) => _SuccessView(
          favoriteIds: favorites,
        ),
      },
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.favoriteIds,
  });

  final List<String> favoriteIds;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favoriteIds.length,
      itemBuilder: (context, index) {
        final favoriteId = favoriteIds[index];
        return FavoritesListItemBuilder(
          key: Key('favorite_list_tile_$favoriteId'),
          component: context.read<FavoritesListComponent>(),
          listener: context.read<FavoritesListItemListener>(),
          favoriteId: favoriteId,
        );
      },
    );
  }
}
