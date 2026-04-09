/// Declares the events a FavoritesListItem RIB can emit upward.
///
/// Constructed by the app layer (routes) with navigation lambdas.
class FavoritesListItemListener {
  /// Construct a listener with the required callbacks.
  const FavoritesListItemListener({
    required this.onFavoriteTapped,
    required this.onFavoriteRemoved,
  });

  /// Called when the user taps on a favorite item.
  final void Function(String favoriteId) onFavoriteTapped;

  /// Called when the user removes a favorite item.
  final void Function(String favoriteId) onFavoriteRemoved;
}
