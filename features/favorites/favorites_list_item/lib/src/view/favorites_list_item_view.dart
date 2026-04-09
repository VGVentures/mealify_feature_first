import 'package:drink/drink.dart';
import 'package:favorite/favorite.dart';
import 'package:favorites_list_item/src/favorites_list_item_component.dart';
import 'package:favorites_list_item/src/favorites_list_item_listener.dart';
import 'package:flutter/material.dart';
import 'package:meal/meal.dart';
import 'package:skeletonizer/skeletonizer.dart';

/// Displays a single favorites list item by composing data provider Builders.
class FavoritesListItemView extends StatelessWidget {
  /// Construct the view for a single favorites list item.
  const FavoritesListItemView({
    required this.component,
    required this.listener,
    required this.favoriteId,
    super.key,
  });

  /// The component that provides dependencies for this RIB.
  final FavoritesListItemComponent component;

  /// The listener for events emitted by this RIB.
  final FavoritesListItemListener listener;

  /// The id of the favorite being displayed.
  final String favoriteId;

  @override
  Widget build(BuildContext context) {
    return FavoriteBuilder(
      component: component,
      favoriteId: favoriteId,
      builder: (context, favoriteState) => switch (favoriteState) {
        FavoriteLoading() => const _ShimmerListTile(),
        FavoriteNotFound() => const SizedBox.shrink(),
        FavoriteError(:final error) => _ErrorListTile(error: error),
        FavoriteSuccess(:final favorite) => MealBuilder(
          component: component,
          mealId: favorite.mealId,
          builder: (context, mealState) => DrinkBuilder(
            component: component,
            drinkId: favorite.drinkId,
            builder: (context, drinkState) => switch ((mealState, drinkState)) {
              (MealSuccess(:final meal), DrinkSuccess(:final drink)) =>
                _SuccessView(
                  mealTitle: meal.title,
                  drinkTitle: drink.title,
                  mealThumbnail: meal.thumbnail,
                  favoriteId: favorite.id,
                  listener: listener,
                ),
              (MealError(), _) || (_, DrinkError()) => const _ErrorListTile(
                error: 'Failed to load',
              ),
              _ => const _ShimmerListTile(),
            },
          ),
        ),
      },
    );
  }
}

class _ShimmerListTile extends StatelessWidget {
  const _ShimmerListTile();

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
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
    );
  }
}

class _ErrorListTile extends StatelessWidget {
  const _ErrorListTile({required this.error});

  final Object error;

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text('$error'));
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.mealTitle,
    required this.drinkTitle,
    required this.mealThumbnail,
    required this.favoriteId,
    required this.listener,
  });

  final String mealTitle;
  final String drinkTitle;
  final String mealThumbnail;
  final String favoriteId;
  final FavoritesListItemListener listener;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('favorite_dismissible_$favoriteId'),
      onDismissed: (_) => listener.onFavoriteRemoved(favoriteId),
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
        leading: SizedBox.square(
          dimension: 48,
          child: Image.network(mealThumbnail, fit: BoxFit.cover),
        ),
        onTap: () => listener.onFavoriteTapped(favoriteId),
      ),
    );
  }
}
