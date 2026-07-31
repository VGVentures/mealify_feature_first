import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mealify_localizations/mealify_localizations.dart';

/// The app's navigation chrome: a bottom navigation bar on small screens, a
/// navigation rail on larger ones, extended once there is room for labels.
///
/// This wraps the `StatefulShellRoute` and is the app's only piece of
/// persistent UI. It belongs to the app rather than to any feature, because the
/// set of tabs is a composition decision: a feature does not know which other
/// features the app ships alongside it.
class ResponsiveScaffold extends StatelessWidget {
  /// Construct the chrome around [navigationShell].
  const ResponsiveScaffold({
    required this.navigationShell,
    super.key,
  });

  /// Below this width the bottom navigation bar is used instead of a rail.
  static const mediumScreenMinWidth = 576;

  /// Above this width the navigation rail shows labels beside its icons.
  static const largeScreenMinWidth = 768;

  /// The shell whose branches the chrome switches between.
  final StatefulNavigationShell navigationShell;

  void _onDestinationSelected(int index) {
    // Tapping the tab you are already on pops that branch back to its root,
    // which is what `initialLocation` does here. Tapping a different tab
    // restores wherever that branch was left.
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mediumScreenMinWidth) {
          return _MobileScaffold(
            navigationShell: navigationShell,
            onDestinationSelected: _onDestinationSelected,
          );
        } else {
          return _DesktopScaffold(
            navigationShell: navigationShell,
            onDestinationSelected: _onDestinationSelected,
            extendRail: constraints.maxWidth > largeScreenMinWidth,
          );
        }
      },
    );
  }
}

class _MobileScaffold extends StatelessWidget {
  const _MobileScaffold({
    required this.navigationShell,
    required this.onDestinationSelected,
  });

  final StatefulNavigationShell navigationShell;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            label: context.l10n.ideasLabel,
            icon: const Icon(Icons.lightbulb),
          ),
          NavigationDestination(
            label: context.l10n.favoritesLabel,
            icon: const Icon(Icons.favorite),
          ),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}

class _DesktopScaffold extends StatelessWidget {
  const _DesktopScaffold({
    required this.navigationShell,
    required this.onDestinationSelected,
    required this.extendRail,
  });

  final StatefulNavigationShell navigationShell;
  final ValueChanged<int> onDestinationSelected;
  final bool extendRail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: extendRail,
            destinations: [
              NavigationRailDestination(
                icon: const Icon(Icons.lightbulb),
                label: Text(context.l10n.ideasLabel),
              ),
              NavigationRailDestination(
                icon: const Icon(Icons.favorite),
                label: Text(context.l10n.favoritesLabel),
              ),
            ],
            selectedIndex: navigationShell.currentIndex,
            onDestinationSelected: onDestinationSelected,
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: navigationShell,
          ),
        ],
      ),
    );
  }
}
