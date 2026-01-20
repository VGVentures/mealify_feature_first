import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_app/app/app.dart';
import 'package:mealify_app/ideas/view/ideas_screen.dart';

void main() {
  group('App', () {
    testWidgets('renders the Ideas Screen', (tester) async {
      await tester.pumpWidget(
        App(
          navigatorKey: GlobalKey(),
        ),
      );

      // Wait for the deferred loading to complete
      await tester.pumpAndSettle();

      expect(find.byType(IdeasScreen), findsOneWidget);
    });
  });
}
