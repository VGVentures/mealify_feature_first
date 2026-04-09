import 'package:flutter/material.dart';
import 'package:ingredients_domain/ingredients_domain.dart';
import 'package:meal/meal.dart';
import 'package:meal_details/src/meal_details_component.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:meals_domain/meals_domain.dart';

/// Displays information about a [Meal]
class MealDetailsView extends StatelessWidget {
  /// Construct the meal details view with the component and meal id.
  const MealDetailsView({
    required this.component,
    required this.mealId,
    super.key,
  });

  /// The component that provides dependencies for this RIB.
  final MealDetailsComponent component;

  /// The id of the [Meal] to be displayed.
  final String mealId;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: MealBuilder(
        component: component,
        mealId: mealId,
        builder: (context, state) => switch (state) {
          MealLoading() => const LoadingView(),
          MealError(:final error) => ErrorView(error: error),
          MealSuccess(:final meal) => DetailsView(
            ingredients: meal.ingredients,
            instructions: meal.instructions,
            thumbnail: meal.thumbnail,
            title: meal.title,
          ),
        },
      ),
    );
  }
}
