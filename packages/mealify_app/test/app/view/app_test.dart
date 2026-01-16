// Ignore for testing purposes
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_app/app/app.dart';
import 'package:mealify_app/random_meal/view/random_meal_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(RandomMealPage), findsOneWidget);
    });
  });
}
