import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/meal_details/bloc/meal_details_cubit.dart';
import 'package:mealify_app/meal_details/bloc/meal_details_state.dart';
import 'package:mealify_app/widgets/error_view.dart';
import 'package:mealify_app/widgets/loading_view.dart';
import 'package:meals_repository/meals_repository.dart';

class MealDetailsScreen extends StatefulWidget {
  const MealDetailsScreen({required this.mealId, super.key});

  final String mealId;

  @override
  State<MealDetailsScreen> createState() => _MealDetailsScreenState();
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  @override
  void initState() {
    super.initState();
    unawaited(context.read<MealDetailsCubit>().loadMealDetails(widget.mealId));
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MealDetailsCubit>().state;

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: switch (state) {
        MealDetailsLoading() => const LoadingView(),
        final MealDetailsError e => ErrorView(error: e),
        final MealDetailsSuccess s => _SuccessView(meal: s.meal),
      },
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _SuccessTab.values.length,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                pinned: true,
                expandedHeight: 250,
                title: Text(meal.strMeal!),
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      text: 'Ingredients',
                    ),
                    Tab(
                      text: 'Instructions',
                    ),
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        meal.strMealThumb!,
                        fit: BoxFit.cover,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0, 0.5, 1],
                            colors: [
                              Theme.of(context).scaffoldBackgroundColor,
                              Theme.of(
                                context,
                              ).scaffoldBackgroundColor.withAlpha(40),
                              Theme.of(context).scaffoldBackgroundColor,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            _TabContent(
              tab: _SuccessTab.ingredients,
              padding: const EdgeInsets.all(20),
              children: [
                for (final ingredient in meal.ingredients)
                  ListTile(
                    title: Text(ingredient.key),
                    trailing: ingredient.value != null
                        ? Text(ingredient.value!)
                        : null,
                  ),
              ],
            ),
            _TabContent(
              tab: _SuccessTab.instructions,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              children: [Text(meal.strInstructions!)],
            ),
          ],
        ),
      ),
    );
  }
}

class _TabContent extends StatelessWidget {
  const _TabContent({
    required this.padding,
    required this.tab,
    required this.children,
  });

  final _SuccessTab tab;
  final List<Widget> children;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: CustomScrollView(
        key: PageStorageKey<_SuccessTab>(tab),
        slivers: [
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          SliverPadding(
            padding: padding,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => children[index],
                childCount: children.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum _SuccessTab { ingredients, instructions }
