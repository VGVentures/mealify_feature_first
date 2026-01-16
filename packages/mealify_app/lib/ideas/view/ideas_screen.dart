import 'dart:async';

import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealdb_api_client/mealdb_api_client.dart';
import 'package:mealify_app/ideas/bloc/ideas_cubit.dart';
import 'package:mealify_app/ideas/bloc/ideas_state.dart';
import 'package:mealify_app/l10n/gen/app_localizations.dart';

class IdeasScreen extends StatefulWidget {
  const IdeasScreen({super.key});

  @override
  State<IdeasScreen> createState() => _IdeasScreenState();
}

class _IdeasScreenState extends State<IdeasScreen> {
  @override
  void initState() {
    unawaited(context.read<IdeasCubit>().fetchRandomMeal());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<IdeasCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).mealifyAppTitle),
      ),
      body: switch (state) {
        IdeasLoading() => const _LoadingView(),
        final IdeasError e => _ErrorView(e: e.error),
        final IdeasSuccess s => _SuccessView(meal: s.meal, drink: s.drink),
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
              onPressed: () => context.read<IdeasCubit>().fetchRandomMeal(),
              child: Text(AppLocalizations.of(context).showMeMoreButtonText),
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
