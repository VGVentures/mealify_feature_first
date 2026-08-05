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

      // One frame with a time gap is enough for the deferred library to
      // resolve. `pumpAndSettle` cannot be used here: IdeasScreen opens in its
      // loading state, and its progress indicator keeps animating for as long
      // as the cubit is loading, so the tree never settles.
      await tester.pump(const Duration(milliseconds: 50));

      expect(find.byType(IdeasScreen), findsOneWidget);
    });
  });
}
