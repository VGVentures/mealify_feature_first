import 'package:drink/drink.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorite/favorite.dart';
import 'package:favorite_details/src/favorite_details_component.dart';
import 'package:flutter/material.dart';
import 'package:meal/meal.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:meals_domain/meals_domain.dart';

/// A view that displays an individual Favorite.
class FavoriteDetailsView extends StatelessWidget {
  /// Construct a [FavoriteDetailsView] with the given id.
  const FavoriteDetailsView({
    required this.component,
    required this.id,
    super.key,
  });

  /// The component that provides dependencies for this RIB.
  final FavoriteDetailsComponent component;

  /// The id of the favorite to display.
  final String id;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: FavoriteBuilder(
        component: component,
        favoriteId: id,
        builder: (context, favoriteState) => switch (favoriteState) {
          FavoriteLoading() => const LoadingView(),
          FavoriteNotFound() => ErrorView(
            error: context.l10n.favoriteDetailsNotFound,
          ),
          FavoriteError(:final error) => ErrorView(error: error),
          FavoriteSuccess(:final favorite) => MealBuilder(
            component: component,
            mealId: favorite.mealId,
            builder: (context, mealState) => DrinkBuilder(
              component: component,
              drinkId: favorite.drinkId,
              builder: (context, drinkState) =>
                  switch ((mealState, drinkState)) {
                    (MealSuccess(:final meal), DrinkSuccess(:final drink)) =>
                      _FavoriteDetailsSuccessView(meal: meal, drink: drink),
                    (MealError(:final error), _) => ErrorView(error: error),
                    (_, DrinkError(:final error)) => ErrorView(error: error),
                    _ => const LoadingView(),
                  },
            ),
          ),
        },
      ),
    );
  }
}

class _FavoriteDetailsSuccessView extends StatelessWidget {
  const _FavoriteDetailsSuccessView({
    required this.meal,
    required this.drink,
  });

  final Meal meal;
  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _DetailViewTab.values.length,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                pinned: true,
                expandedHeight: 250,
                title: Text(context.l10n.favoriteDetailsTitle),
                bottom: TabBar(
                  tabs: [
                    Tab(text: context.l10n.mealDetailsTitle),
                    Tab(text: context.l10n.drinkDetailsTitle),
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      TabBarView(
                        children: [
                          Image.network(meal.thumbnail, fit: BoxFit.cover),
                          Image.network(drink.thumbnail, fit: BoxFit.cover),
                        ],
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
              tab: _DetailViewTab.ingredients,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              children: [
                Text(
                  meal.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                Text(meal.instructions),
              ],
            ),
            _TabContent(
              tab: _DetailViewTab.instructions,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              children: [
                Text(
                  drink.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                Text(drink.instructions),
              ],
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

  final _DetailViewTab tab;
  final List<Widget> children;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: CustomScrollView(
        key: PageStorageKey<_DetailViewTab>(tab),
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

enum _DetailViewTab { ingredients, instructions }
