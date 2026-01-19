import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    required this.ingredients,
    required this.instructions,
    required this.thumbnail,
    required this.title,
    super.key,
  });

  final String title;
  final String thumbnail;
  final List<Ingredients> ingredients;
  final String instructions;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: DetailViewTab.values.length,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                pinned: true,
                expandedHeight: 250,
                title: Text(title),
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
              tab: DetailViewTab.ingredients,
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
              tab: DetailViewTab.instructions,
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

  final DetailViewTab tab;
  final List<Widget> children;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: CustomScrollView(
        key: PageStorageKey<DetailViewTab>(tab),
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

enum DetailViewTab { ingredients, instructions }

typedef IngredientName = String;
typedef IngredientMeasurement = String?;
typedef Ingredients = ({
  IngredientName name,
  IngredientMeasurement measurement,
});
