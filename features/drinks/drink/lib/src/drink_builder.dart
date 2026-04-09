import 'dart:async';

import 'package:drink/src/drink_component.dart';
import 'package:drink/src/interactor/drink_interactor.dart';
import 'package:drink/src/interactor/drink_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A data provider Builder that fetches a single Drink and exposes its state
/// via a [builder] callback.
class DrinkBuilder extends StatelessWidget {
  /// Construct a DrinkBuilder.
  const DrinkBuilder({
    required this.component,
    required this.drinkId,
    required this.builder,
    super.key,
  });

  /// The component that provides the drinks repository.
  final DrinkComponent component;

  /// The id of the drink to fetch.
  final String drinkId;

  /// A builder callback that receives the current [DrinkState].
  final Widget Function(BuildContext context, DrinkState state) builder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final interactor = DrinkInteractor(
          drinksRepository: component.drinksRepository,
        );

        unawaited(interactor.loadDrink(drinkId));

        return interactor;
      },
      child: BlocBuilder<DrinkInteractor, DrinkState>(builder: builder),
    );
  }
}
