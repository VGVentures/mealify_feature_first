/// The app's routing table.
///
/// Every feature is imported with a `deferred as` prefix, so its code is
/// fetched the first time a route needs it instead of shipping in the initial
/// bundle. That is what splits the web build into per-screen chunks and what
/// allows Android dynamic feature modules.
///
/// Where a feature exposes subfeature barrels, the import names one screen
/// rather than the whole package, so opening the favorites list does not also
/// download the details screen.
library;

import 'package:drinks_presentation/drinks_presentation.dart'
    deferred as drink_details;
import 'package:favorites_presentation/favorite_details.dart'
    deferred as favorite_details;
import 'package:favorites_presentation/favorites_list.dart'
    deferred as favorites_list;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ideas_presentation/ideas_presentation.dart' deferred as ideas;
import 'package:mealify_app/app/app.dart';
import 'package:mealify_app/app_router/deferred_loader.dart';
import 'package:mealify_app/app_router/responsive_scaffold.dart';
import 'package:meals_presentation/meal_details.dart' deferred as meal_details;
import 'package:provider/provider.dart';

// The branches live in their own files for readability, but they must stay part
// of this library: go_router_builder collects every @TypedGoRoute in a library
// into one generated `$appRoutes`, so a branch in a separate library would be
// left out of it.
part 'favorites_routes.dart';
part 'ideas_routes.dart';
part 'routes.g.dart';

/// The app's root route: two tabs, each with its own navigation stack.
///
/// A `StatefulShellRoute` keeps a separate history per branch, so switching
/// tabs preserves where the user was in each one.
@TypedStatefulShellRoute<AppShellRouteData>(
  branches: [
    ideasBranch,
    favoritesBranch,
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  /// Construct the shell route.
  const AppShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ResponsiveScaffold(navigationShell: navigationShell);
  }
}
