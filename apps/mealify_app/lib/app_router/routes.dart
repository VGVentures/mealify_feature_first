import 'dart:async';

import 'package:drink_details/drink_details.dart' deferred as drink_details;
import 'package:favorite_details/favorite_details.dart'
    deferred as favorite_details;
import 'package:favorites_list/favorites_list.dart' deferred as favorites_list;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ideas/ideas.dart' deferred as ideas;
import 'package:meal_details/meal_details.dart' deferred as meal_details;
import 'package:mealify_app/app/app.dart';
import 'package:mealify_app/app_router/deferred_loader.dart';
import 'package:provider/provider.dart';

part 'favorites_routes.dart';
part 'ideas_routes.dart';
part 'routes.g.dart';

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: [
    ideasBranch,
    favoritesBranch,
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
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
