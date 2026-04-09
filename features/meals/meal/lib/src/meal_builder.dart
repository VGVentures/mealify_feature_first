import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal/src/interactor/meal_interactor.dart';
import 'package:meal/src/interactor/meal_state.dart';
import 'package:meal/src/meal_component.dart';

/// A data provider Builder that fetches a single Meal and exposes its state
/// via a [builder] callback.
class MealBuilder extends StatelessWidget {
  /// Construct a MealBuilder.
  const MealBuilder({
    required this.component,
    required this.mealId,
    required this.builder,
    super.key,
  });

  /// The component that provides the meals repository.
  final MealComponent component;

  /// The id of the meal to fetch.
  final String mealId;

  /// A builder callback that receives the current [MealState].
  final Widget Function(BuildContext context, MealState state) builder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final interactor = MealInteractor(
          mealsRepository: component.mealsRepository,
        );

        unawaited(interactor.loadMeal(mealId));

        return interactor;
      },
      child: BlocBuilder<MealInteractor, MealState>(builder: builder),
    );
  }
}
