import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideas_presentation/src/ideas_screen/bloc/ideas_cubit.dart';
import 'package:ideas_presentation/src/ideas_screen/views/ideas_screen.dart';
import 'package:meals_domain/meals_domain.dart';

/// The Module  Idea Screen and its dependencies
class IdeasModule extends StatelessWidget {
  /// Constructs an Ideas module
  const IdeasModule({
    required this.drinksRepository,
    required this.mealsRepository,
    required this.favoritesRepository,
    required this.onDrinkTapped,
    required this.onMealTapped,
    super.key = const Key('IdeasModule'),
  });

  /// The repository for drinks
  final IDrinksRepository drinksRepository;

  /// The repository for meals
  final IMealsRepository mealsRepository;

  /// The repository for favorites
  final IFavoritesRepository favoritesRepository;

  /// The callback executed when a Drink is tapped. Used for routing.
  final ValueChanged<Drink> onDrinkTapped;

  /// The callback executed when a Meal is tapped. Used for routing.
  final ValueChanged<Meal> onMealTapped;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IdeasCubit>(
      create: (context) {
        return IdeasCubit(
          drinksRepository: drinksRepository,
          mealsRepository: mealsRepository,
          favoritesRepository: favoritesRepository,
        );
      },
      child: IdeasScreen(
        onDrinkTapped: onDrinkTapped,
        onMealTapped: onMealTapped,
      ),
    );
  }
}
