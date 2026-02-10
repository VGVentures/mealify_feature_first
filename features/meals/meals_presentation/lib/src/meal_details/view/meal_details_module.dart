import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:meals_presentation/src/meal_details/bloc/meal_details_cubit.dart';
import 'package:meals_presentation/src/meal_details/view/meal_details_screen.dart';

/// The Module is responsible for loading the code related to the meal details
/// screen and setting up the dependencies for the screen
class MealDetailsModule extends StatelessWidget {
  /// Construct a module that displays the meal details screen
  const MealDetailsModule({
    required this.mealsRepository,
    required this.mealId,
    super.key,
  });

  /// The repository for meals
  final IMealsRepository mealsRepository;

  /// The idea of the meal to show details about
  final String mealId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MealDetailsCubit>(
      create: (context) => MealDetailsCubit(mealsRepository: mealsRepository),
      child: MealDetailsScreen(mealId: mealId),
    );
  }
}
