import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/meal_details/bloc/meal_details_cubit.dart';
import 'package:mealify_app/meal_details/bloc/meal_details_state.dart';
import 'package:mealify_app/widgets/details_view.dart';
import 'package:mealify_app/widgets/error_view.dart';
import 'package:mealify_app/widgets/loading_view.dart';
import 'package:meals_repository/meals_repository.dart';

class MealDetailsScreen extends StatefulWidget {
  const MealDetailsScreen({required this.mealId, super.key});

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
          ingredients: s.meal.ingredients,
          instructions: s.meal.instructions,
          thumbnail: s.meal.thumbnail,
          title: s.meal.title,
        ),
      },
    );
  }
}

extension MealIngredients on Meal {
  List<Ingredients> get ingredients {
    final allPossible = [
      (ingredient1, measure1),
      (ingredient2, measure2),
      (ingredient3, measure3),
      (ingredient4, measure4),
      (ingredient5, measure5),
      (ingredient6, measure6),
      (ingredient7, measure7),
      (ingredient8, measure8),
      (ingredient9, measure9),
      (ingredient10, measure10),
      (ingredient11, measure11),
      (ingredient12, measure12),
      (ingredient13, measure13),
      (ingredient14, measure14),
      (ingredient15, measure15),
      (ingredient16, measure16),
      (ingredient17, measure17),
      (ingredient18, measure18),
      (ingredient19, measure19),
      (ingredient20, measure20),
    ];

    return [
      for (final entry in allPossible)
        if (entry.$1 != null && entry.$2!.trim().isNotEmpty)
          (name: entry.$1!, measurement: entry.$2),
    ];
  }
}
