import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mealify_app/l10n/l10n.dart';

/// A scaffold that shows a bottom navigation bar for small screens and a
/// navigation rail for larger screens
class ResponsiveScaffold extends StatelessWidget {
  const ResponsiveScaffold({
    required this.navigationShell,
    super.key,
  });

  static const mediumScreenMinWidth = 576;
  static const largeScreenMinWidth = 768;

  final StatefulNavigationShell navigationShell;

  void _onDestinationSelected(int index) {
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
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            label: localizations.ideasLabel,
            icon: const Icon(Icons.lightbulb),
          ),
          NavigationDestination(
            label: localizations.favoritesLabel,
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
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: extendRail,
            destinations: [
              NavigationRailDestination(
                icon: const Icon(Icons.lightbulb),
                label: Text(localizations.ideasLabel),
              ),
              NavigationRailDestination(
                icon: const Icon(Icons.favorite),
                label: Text(localizations.favoritesLabel),
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
