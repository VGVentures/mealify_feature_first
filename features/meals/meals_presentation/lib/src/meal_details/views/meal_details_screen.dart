import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ingredients_domain/ingredients_domain.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:meals_presentation/src/meal_details/bloc/meal_details_cubit.dart';
import 'package:meals_presentation/src/meal_details/bloc/meal_details_state.dart';

/// Displays information about a [Meal]
class MealDetailsScreen extends StatefulWidget {
  /// Construct the meal details screen with the id of the meal to be loaded.
  /// The id generally comes from the route.
  const MealDetailsScreen({required this.mealId, super.key});

  /// The id of the [Meal] to be displayed.
  final String mealId;

  @override
  State<MealDetailsScreen> createState() => _MealDetailsScreenState();
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  @override
  void initState() {
    super.initState();
    unawaited(context.read<MealDetailsCubit>().loadMealDetails(widget.mealId));
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MealDetailsCubit>().state;

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: switch (state) {
        MealDetailsLoading() => const LoadingView(),
        MealDetailsError(:final error) => ErrorView(error: error),
        final MealDetailsSuccess s => DetailsView(
          rows: [
            for (final ingredient in s.meal.ingredients)
              (label: ingredient.name, value: ingredient.measurement),
          ],
          rowsTabLabel: context.l10n.ingredientsTabText,
          description: s.meal.instructions,
          descriptionTabLabel: context.l10n.instructionsTabText,
          thumbnail: s.meal.thumbnail,
          title: s.meal.title,
        ),
      },
    );
  }
}
