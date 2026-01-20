import 'dart:async';

import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/drink_details/bloc/drink_details_cubit.dart';
import 'package:mealify_app/drink_details/bloc/drink_details_state.dart';
import 'package:mealify_app/widgets/details_view.dart';
import 'package:mealify_app/widgets/error_view.dart';
import 'package:mealify_app/widgets/loading_view.dart';

class DrinkDetailsScreen extends StatefulWidget {
  const DrinkDetailsScreen({required this.drinkId, super.key});

  final String drinkId;

  @override
  State<DrinkDetailsScreen> createState() => _DrinkDetailsScreenState();
}

class _DrinkDetailsScreenState extends State<DrinkDetailsScreen> {
  @override
  void initState() {
    super.initState();
    unawaited(
      context.read<DrinkDetailsCubit>().loadDrinkDetails(widget.drinkId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DrinkDetailsCubit>().state;

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: switch (state) {
        DrinkDetailsLoading() => const LoadingView(),
        DrinkDetailsError(:final error) => ErrorView(error: error),
        DrinkDetailsSuccess(:final drink) => DetailsView(
          ingredients: drink.ingredients,
          instructions: drink.instructions,
          thumbnail: drink.thumbnail,
          title: drink.title,
        ),
      },
    );
  }
}

extension DrinkIngredients on Drink {
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
    ];

    return [
      for (final entry in allPossible)
        if (entry.$1 != null && entry.$2!.trim().isNotEmpty)
          (name: entry.$1!, measurement: entry.$2),
    ];
  }
}
