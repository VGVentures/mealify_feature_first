import 'package:drink/drink_component.dart';
import 'package:favorite/favorite_component.dart';
import 'package:meal/meal_component.dart';

/// Declares the dependencies an Ideas RIB needs from its parent.
abstract interface class IdeasComponent
    implements DrinkComponent, MealComponent, FavoriteComponent {}
