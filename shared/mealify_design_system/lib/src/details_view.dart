import 'package:flutter/material.dart';
import 'package:mealify_design_system/src/details_row.dart';

/// A two-tab detail layout: a list of [rows] beside a block of [description]
/// prose, under a collapsing image header.
///
/// The widget names nothing from any feature. Callers supply both tab labels
/// and map their own types into [DetailsRow], so the same layout serves a meal,
/// a drink, or anything else with a list and a description.
class DetailsView extends StatelessWidget {
  /// Construct a DetailsView with the given dependencies
  const DetailsView({
    required this.rows,
    required this.rowsTabLabel,
    required this.description,
    required this.descriptionTabLabel,
    required this.thumbnail,
    required this.title,
    super.key,
  });

  /// The title of the details page
  final String title;

  /// The thumbnail to be displayed in the flexibleSpace of a SliverAppBar
  final String thumbnail;

  /// The rows shown in the list tab.
  final List<DetailsRow> rows;

  /// The label on the tab that shows [rows].
  final String rowsTabLabel;

  /// The prose shown in the description tab.
  final String description;

  /// The label on the tab that shows [description].
  final String descriptionTabLabel;

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
                    Tab(text: rowsTabLabel),
                    Tab(text: descriptionTabLabel),
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
              tab: _DetailViewTab.rows,
              padding: const EdgeInsets.all(20),
              children: [
                for (final row in rows)
                  ListTile(
                    title: Text(row.label),
                    trailing: row.value != null ? Text(row.value!) : null,
                  ),
              ],
            ),
            _TabContent(
              tab: _DetailViewTab.description,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              children: [Text(description)],
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

enum _DetailViewTab { description, rows }
