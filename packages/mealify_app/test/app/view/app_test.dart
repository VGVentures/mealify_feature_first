import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_app/app/app.dart';
import 'package:mealify_app/ideas/view/ideas_screen.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(
        App(
          navigatorKey: GlobalKey(),
        ),
      );
      expect(find.byType(IdeasScreen), findsOneWidget);
    });
  });
}
