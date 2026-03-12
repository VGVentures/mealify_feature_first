/// Route path constants for the Drinks feature.
class DrinkRoutePaths {
  /// The path segment for the drink details route.
  static const String details = 'drink/:id';

  /// Returns the full location for a drink details screen.
  static String detailsLocation(String id) =>
      '/ideas/drink/${Uri.encodeComponent(id)}';
}
