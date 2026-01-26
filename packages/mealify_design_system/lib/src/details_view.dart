import 'package:flutter/material.dart';
import 'package:ingredients_domain/ingredients_domain.dart';
import 'package:mealify_localizations/mealify_localizations.dart';

/// A Widget that shows Details for a Meal or Drink
class DetailsView extends StatelessWidget {
  /// Construct a DetailsView with the given dependencies
  const DetailsView({
    required this.ingredients,
    required this.instructions,
    required this.thumbnail,
    required this.title,
    super.key,
  });

  /// The title of the details page
  final String title;

  /// The thumbnail to be displayed in the flexibleSpace of a SliverAppBar
  final String thumbnail;

  /// The list of ingredients for a Drink or Meal
  final List<Ingredient> ingredients;

  /// The instructions describing how to make a Drink or Meal
  final String instructions;

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
                title: Text(title),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: context.l10n.ingredientsTabText,
                    ),
                    Tab(
                      text: context.l10n.instructionsTabText,
                    ),
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        thumbnail,
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
              tab: _DetailViewTab.ingredients,
              padding: const EdgeInsets.all(20),
              children: [
                for (final ingredient in ingredients)
                  ListTile(
                    title: Text(ingredient.name),
                    trailing: ingredient.measurement != null
                        ? Text(ingredient.measurement!)
                        : null,
                  ),
              ],
            ),
            _TabContent(
              tab: _DetailViewTab.instructions,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              children: [Text(instructions)],
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

enum _DetailViewTab { instructions, ingredients }
