import 'package:favorites_list_item/src/favorites_list_item_component.dart';
import 'package:favorites_list_item/src/favorites_list_item_listener.dart';
import 'package:favorites_list_item/src/view/favorites_list_item_view.dart';
import 'package:flutter/widgets.dart';

/// The Builder wires the dependencies for a single favorites list item RIB.
class FavoritesListItemBuilder extends StatelessWidget {
  /// Construct a builder for a favorites list item.
  const FavoritesListItemBuilder({
    required this.component,
    required this.listener,
    required this.favoriteId,
    required super.key,
  });

  /// The component that provides dependencies for this RIB.
  final FavoritesListItemComponent component;

  /// The listener for events emitted by this RIB.
  final FavoritesListItemListener listener;

  /// The id of the favorite to load.
  final String favoriteId;

  @override
  Widget build(BuildContext context) {
    return FavoritesListItemView(
      component: component,
      listener: listener,
      favoriteId: favoriteId,
    );
  }
}
