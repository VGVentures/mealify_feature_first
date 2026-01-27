import 'package:flutter/widgets.dart';
import 'package:mealify_app/app/app.dart';
import 'package:mealify_app/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => App(navigatorKey: GlobalKey()));
}
