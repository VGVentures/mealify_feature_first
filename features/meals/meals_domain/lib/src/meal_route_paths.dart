/// Route path constants for the Meals feature.
class MealRoutePaths {
  /// The path segment for the meal details route.
  static const String details = 'meal/:id';

  /// Returns the full location for a meal details screen.
  static String detailsLocation(String id) =>
      '/ideas/meal/${Uri.encodeComponent(id)}';
}
