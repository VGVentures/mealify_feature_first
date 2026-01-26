import 'dart:async';

import 'package:drinks_domain/drinks_domain.dart';
import 'package:drinks_presentation/src/drink_details/bloc/drink_details_cubit.dart';
import 'package:drinks_presentation/src/drink_details/bloc/drink_details_state.dart';
import 'package:flutter/material.dart';
import 'package:ingredients_domain/ingredients_domain.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:provider/provider.dart';

/// Displays information about a [Drink]
class DrinkDetailsScreen extends StatefulWidget {
  /// Construct the meal details screen with the id of the meal to be loaded.
  /// The id generally comes from the route.
  const DrinkDetailsScreen({required this.drinkId, super.key});

  /// The id of the [Drink] to be displayed.
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
