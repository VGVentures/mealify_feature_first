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
import 'package:meals_presentation/meals_presentation.dart'
    deferred as meal_details;
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
