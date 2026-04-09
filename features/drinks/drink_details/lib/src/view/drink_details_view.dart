import 'package:drink/drink.dart';
import 'package:drink_details/src/drink_details_component.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/material.dart';
import 'package:ingredients_domain/ingredients_domain.dart';
import 'package:mealify_design_system/mealify_design_system.dart';

/// Displays information about a [Drink]
class DrinkDetailsView extends StatelessWidget {
  /// Construct the drink details view with the component and drink id.
  const DrinkDetailsView({
    required this.component,
    required this.drinkId,
    super.key,
  });

  /// The component that provides dependencies for this RIB.
  final DrinkDetailsComponent component;

  /// The id of the [Drink] to be displayed.
  final String drinkId;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: DrinkBuilder(
        component: component,
        drinkId: drinkId,
        builder: (context, state) => switch (state) {
          DrinkLoading() => const LoadingView(),
          DrinkError(:final error) => ErrorView(error: error),
          DrinkSuccess(:final drink) => DetailsView(
            ingredients: drink.ingredients,
            instructions: drink.instructions,
            thumbnail: drink.thumbnail,
            title: drink.title,
          ),
        },
      ),
    );
  }
}
