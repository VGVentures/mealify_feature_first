import 'package:favorites_list_item/src/favorites_list_item_listener.dart';
import 'package:favorites_list_item/src/interactor/favorites_list_item_interactor.dart';
import 'package:favorites_list_item/src/interactor/favorites_list_item_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

/// Displays a single favorites list item, switching on the sealed state.
class FavoritesListItemView extends StatelessWidget {
  /// Construct the view for a single favorites list item.
  const FavoritesListItemView({
    required this.favoriteId,
    required this.listener,
    super.key,
  });

  /// The id of the favorite being displayed.
  final String favoriteId;

  /// The listener for events emitted by this RIB.
  final FavoritesListItemListener listener;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesListItemInteractor, FavoritesListItemState>(
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
            listener: listener,
          ),
        };
      },
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
    required this.listener,
  });

  final String mealTitle;
  final String drinkTitle;
  final String mealThumbnail;
  final String drinkThumbnail;
  final String favoriteId;
  final FavoritesListItemListener listener;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('favorite_dismissible_$favoriteId'),
      onDismissed: (_) async {
        await context.read<FavoritesListItemInteractor>().removeFavorite(
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
        onTap: () => listener.onFavoriteTapped(favoriteId),
      ),
    );
  }
}
