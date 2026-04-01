import 'dart:async';

import 'package:drink_details/src/interactor/drink_details_interactor.dart';
import 'package:drink_details/src/interactor/drink_details_state.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/material.dart';
import 'package:ingredients_domain/ingredients_domain.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:provider/provider.dart';

/// Displays information about a [Drink]
class DrinkDetailsView extends StatefulWidget {
  /// Construct the drink details view with the id of the drink to be loaded.
  /// The id generally comes from the route.
  const DrinkDetailsView({required this.drinkId, super.key});

  /// The id of the [Drink] to be displayed.
  final String drinkId;

  @override
  State<DrinkDetailsView> createState() => _DrinkDetailsViewState();
}

class _DrinkDetailsViewState extends State<DrinkDetailsView> {
  @override
  void initState() {
    super.initState();
    unawaited(
      context.read<DrinkDetailsInteractor>().loadDrinkDetails(widget.drinkId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DrinkDetailsInteractor>().state;

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
