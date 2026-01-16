import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/random_meal/bloc/random_meal_cubit.dart';
import 'package:mealify_app/random_meal/bloc/random_meal_state.dart';

class RandomMealPage extends StatefulWidget {
  const RandomMealPage({super.key});

  @override
  State<RandomMealPage> createState() => _RandomMealPageState();
}

class _RandomMealPageState extends State<RandomMealPage> {
  @override
  void initState() {
    unawaited(context.read<RandomMealCubit>().fetchRandomMeal());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<RandomMealCubit>().state;

    return Scaffold(
      body: switch (state) {
        RandomMealLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
        RandomMealError(error: final e) => Center(
          child: Column(
            children: [const Icon(Icons.error), Text('$e')],
          ),
        ),
        RandomMealSuccess() => Column(
          children: [
            Text('Meal: ${state.meal.strMeal!}'),
            Text('Drink: ${state.drink.strDrink!}'),
          ],
        ),
      },
    );
  }
}
