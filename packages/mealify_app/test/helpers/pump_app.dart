import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_localizations/mealify_localizations.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: MealifyLocalizations.localizationsDelegates,
        supportedLocales: MealifyLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }
}
