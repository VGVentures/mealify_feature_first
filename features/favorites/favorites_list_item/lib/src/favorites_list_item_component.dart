import 'package:drink/drink_component.dart';
import 'package:favorite/favorite_component.dart';
import 'package:meal/meal_component.dart';

/// Declares the dependencies a FavoritesListItem RIB needs from its parent.
///
/// The parent's Component class implements this interface, providing
/// compile-time safety for dependency contracts.
abstract interface class FavoritesListItemComponent
    implements MealComponent, DrinkComponent, FavoriteComponent {}
