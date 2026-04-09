import 'package:drink/drink_component.dart';
import 'package:favorite/favorite_component.dart';
import 'package:meal/meal_component.dart';

/// Declares the dependencies a FavoriteDetails RIB needs from its parent.
abstract interface class FavoriteDetailsComponent
    implements MealComponent, DrinkComponent, FavoriteComponent {}
