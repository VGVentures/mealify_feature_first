import 'dart:async';

import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealdb_api_client/mealdb_api_client.dart';
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
        RandomMealLoading() => const _LoadingView(),
        final RandomMealError e => _ErrorView(e: e.error),
        final RandomMealSuccess s => _SuccessView(meal: s.meal, drink: s.drink),
      },
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.meal,
    required this.drink,
  });

  final Meal meal;
  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(child: Image.network(meal.strMealThumb!)),
          Padding(
            padding: const EdgeInsetsGeometry.symmetric(vertical: 20),
            child: MaterialButton(
              onPressed: () =>
                  context.read<RandomMealCubit>().fetchRandomMeal(),
              child: const Text('Fetch another!'),
            ),
          ),
          Expanded(child: Image.network(drink.strDrinkThumb!)),
        ],
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({
    required this.e,
  });

  final Object e;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            size: 40,
          ),
          Text('$e'),
        ],
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
