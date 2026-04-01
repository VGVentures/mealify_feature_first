import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ingredients_domain/ingredients_domain.dart';
import 'package:meal_details/src/interactor/meal_details_interactor.dart';
import 'package:meal_details/src/interactor/meal_details_state.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:provider/provider.dart';

/// Displays information about a [Meal]
class MealDetailsView extends StatefulWidget {
  /// Construct the meal details view with the id of the meal to be loaded.
  /// The id generally comes from the route.
  const MealDetailsView({required this.mealId, super.key});

  /// The id of the [Meal] to be displayed.
  final String mealId;

  @override
  State<MealDetailsView> createState() => _MealDetailsViewState();
}

class _MealDetailsViewState extends State<MealDetailsView> {
  @override
  void initState() {
    super.initState();
    unawaited(
      context.read<MealDetailsInteractor>().loadMealDetails(widget.mealId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MealDetailsInteractor>().state;

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: switch (state) {
        MealDetailsLoading() => const LoadingView(),
        MealDetailsError(:final error) => ErrorView(error: error),
        final MealDetailsSuccess s => DetailsView(
          ingredients: s.meal.ingredients,
          instructions: s.meal.instructions,
          thumbnail: s.meal.thumbnail,
          title: s.meal.title,
        ),
      },
    );
  }
}
