import 'dart:async';

import 'package:favorites_presentation/favorites_list.dart';
import 'package:favorites_presentation/src/favorites_list_item/bloc/favorites_list_item_cubit.dart';
import 'package:favorites_presentation/src/favorites_list_item/bloc/favorites_list_item_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

/// A list tile responsible for loading the necessary data for showing a
/// favorite. This works better if we need to move to a paginated list of
/// favorites, rather than loading absolutely everything into memory.
class FavoritesListItem extends StatelessWidget {
  /// Construct a list tile responsible for loading the necessary data for
  /// showing a favorite. This works better if we need to move to a paginated
  /// list of favorites, rather than loading absolutely everything into memory.
  const FavoritesListItem({
    required this.onFavoriteTapped,
    required this.favoriteId,
    required super.key,
  });

  /// The id of the favorite to load
  final String favoriteId;

  /// The callback fired when the favorite is tapped
  final OnFavoriteTapped onFavoriteTapped;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = FavoritesListItemCubit(
          favoritesRepository: context.read(),
          getFavoriteQuery: context.read(),
        );

        unawaited(cubit.loadFavorite(favoriteId));

        return cubit;
      },
      child: BlocBuilder<FavoritesListItemCubit, FavoritesListItemState>(
        builder: (context, state) {
          return switch (state) {
            FavoritesListItemLoading() => Skeletonizer(
              effect: ShimmerEffect(
                baseColor: Colors.grey.shade200,
                highlightColor: Colors.grey.shade300,
              ),
              child: ListTile(
                leading: SizedBox.square(
                  dimension: 48,
                  child: ColoredBox(color: Colors.grey.shade400),
                ),
                title: const Text('Dummy Title'),
                subtitle: const Text('Dummy Drink Subtitle'),
              ),
            ),
            FavoritesListItemError(:final error) => ListTile(
              title: Text('$error'),
            ),
            FavoritesListItemSuccess(:final favorite) => _SuccessView(
              mealTitle: favorite.meal.title,
              drinkTitle: favorite.drink.title,
              mealThumbnail: favorite.meal.thumbnail,
              drinkThumbnail: favorite.drink.thumbnail,
              favoriteId: favorite.id,
              onFavoriteTapped: onFavoriteTapped,
            ),
          };
        },
      ),
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.mealTitle,
    required this.drinkTitle,
    required this.mealThumbnail,
    required this.drinkThumbnail,
    required this.favoriteId,
    required this.onFavoriteTapped,
  });

  final String mealTitle;
  final String drinkTitle;
  final String mealThumbnail;
  final String drinkThumbnail;
  final String favoriteId;
  final OnFavoriteTapped? onFavoriteTapped;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('favorite_dismissible_$favoriteId'),
      onDismissed: (_) async {
        await context.read<FavoritesListItemCubit>().removeFavorite(
          favoriteId,
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
        title: Text(mealTitle),
        subtitle: Text(drinkTitle),
        leading: Image.network(mealThumbnail),
        onTap: onFavoriteTapped != null
            ? () => onFavoriteTapped!(favoriteId)
            : null,
      ),
    );
  }
}
