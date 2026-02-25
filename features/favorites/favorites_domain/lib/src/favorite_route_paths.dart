/// Route path constants for the Favorites feature.
class FavoriteRoutePaths {
  /// The path for the favorites list route.
  static const String list = '/favorites';

  /// The path segment for the favorite details route.
  static const String details = ':id';

  /// Returns the full location for a favorite details screen.
  static String detailsLocation(String id) =>
      '/favorites/${Uri.encodeComponent(id)}';
}
