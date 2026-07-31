import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_design_system/mealify_design_system.dart';

import '../helpers/mock_network_images.dart';

void main() {
  group('DetailsView', () {
    Widget subject({List<DetailsRow> rows = const []}) {
      return MaterialApp(
        home: Scaffold(
          body: DetailsView(
            title: 'Negroni',
            thumbnail: 'https://example.com/negroni.png',
            rows: rows,
            // Deliberately not "Ingredients" or "Instructions". The point of
            // this widget is that the labels are the caller's words, so a test
            // that passed the app's own copy could not tell a parameter from a
            // hardcoded string.
            rowsTabLabel: 'Parts',
            description: 'Stir with ice, strain, garnish with orange.',
            descriptionTabLabel: 'Method',
          ),
        ),
      );
    }

    testWidgets('labels both tabs from its parameters', (tester) async {
      await mockNetworkImages(() async {
        await tester.pumpWidget(subject());

        expect(find.text('Parts'), findsOneWidget);
        expect(find.text('Method'), findsOneWidget);
      });
    });

    testWidgets('renders a row label and its value', (tester) async {
      await mockNetworkImages(() async {
        await tester.pumpWidget(
          subject(rows: [(label: 'Campari', value: '30 ml')]),
        );

        expect(find.text('Campari'), findsOneWidget);
        expect(find.text('30 ml'), findsOneWidget);
      });
    });

    testWidgets('renders no trailing text when a row has no value', (
      tester,
    ) async {
      await mockNetworkImages(() async {
        await tester.pumpWidget(
          subject(rows: [(label: 'Orange peel', value: null)]),
        );

        final tile = tester.widget<ListTile>(find.byType(ListTile));

        expect(find.text('Orange peel'), findsOneWidget);
        expect(tile.trailing, isNull);
      });
    });

    testWidgets('shows the description on the second tab', (tester) async {
      await mockNetworkImages(() async {
        await tester.pumpWidget(subject());

        await tester.tap(find.text('Method'));
        await tester.pumpAndSettle();

        expect(
          find.text('Stir with ice, strain, garnish with orange.'),
          findsOneWidget,
        );
      });
    });
  });
}
