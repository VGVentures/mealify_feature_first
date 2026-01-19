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
        final DrinkDetailsError e => ErrorView(error: e),
        final DrinkDetailsSuccess s => DetailsView(
          ingredients: s.drink.ingredients,
          instructions: s.drink.strInstructions,
          thumbnail: s.drink.strDrinkThumb,
          title: s.drink.strDrink,
        ),
      },
    );
  }
}

extension DrinkIngredients on Drink {
  List<Ingredients> get ingredients {
    final allPossible = [
      (strIngredient1, strMeasure1),
      (strIngredient2, strMeasure2),
      (strIngredient3, strMeasure3),
      (strIngredient4, strMeasure4),
      (strIngredient5, strMeasure5),
      (strIngredient6, strMeasure6),
      (strIngredient7, strMeasure7),
      (strIngredient8, strMeasure8),
      (strIngredient9, strMeasure9),
      (strIngredient10, strMeasure10),
      (strIngredient11, strMeasure11),
      (strIngredient12, strMeasure12),
      (strIngredient13, strMeasure13),
      (strIngredient14, strMeasure14),
      (strIngredient15, strMeasure15),
    ];

    return [
      for (final entry in allPossible)
        if (entry.$1 != null && entry.$2!.trim().isNotEmpty)
          (name: entry.$1!, measurement: entry.$2),
    ];
  }
}
