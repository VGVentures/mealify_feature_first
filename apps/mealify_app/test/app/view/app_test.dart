import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ideas_presentation/ideas_presentation.dart';
import 'package:mealify_app/app/app.dart';

void main() {
  group('$MealifyApp', () {
    testWidgets('renders the initial route', (tester) async {
      await tester.pumpWidget(
        MealifyApp(
          navigatorKey: GlobalKey(),
        ),
      );

      // Wait for the deferred loading to complete
      await tester.pumpAndSettle();

      expect(find.byType(IdeasScreen), findsOneWidget);
    });
  });
}
