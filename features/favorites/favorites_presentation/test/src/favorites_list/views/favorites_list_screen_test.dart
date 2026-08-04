import 'dart:async';

import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_presentation/src/favorites_list/bloc/favorites_list_cubit.dart';
import 'package:favorites_presentation/src/favorites_list/views/favorites_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

import '../../../helpers/favorite_fixtures.dart';
import '../../../helpers/mock_network_images.dart';
import '../../../helpers/mocks.dart';

void main() {
  group('FavoritesListScreen', () {
    late MockFavoritesRepository favoritesRepository;
    late MockGetFavoriteQuery getFavoriteQuery;
    late StreamController<List<String>> favoriteIds;

    setUp(() {
      favoritesRepository = MockFavoritesRepository();
      getFavoriteQuery = MockGetFavoriteQuery();
      favoriteIds = StreamController<List<String>>();

      when(favoritesRepository.watchAllFavoriteIds).thenAnswer(
        (_) => favoriteIds.stream,
      );
      when(() => getFavoriteQuery.get(any())).thenAnswer(
        (invocation) async =>
            favoriteFixture(invocation.positionalArguments.first as String),
      );
    });

    tearDown(() => favoriteIds.close());

    Future<void> pumpScreen(WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: MealifyLocalizations.localizationsDelegates,
          supportedLocales: MealifyLocalizations.supportedLocales,
          home: Provider<GetFavoriteQuery>.value(
            value: getFavoriteQuery,
            child: Provider<IFavoritesRepository>.value(
              value: favoritesRepository,
              child: BlocProvider<FavoritesListCubit>(
                create: (_) => FavoritesListCubit(
                  favoritesRepository: favoritesRepository,
                ),
                child: FavoritesListScreen(onFavoriteTapped: (_) {}),
              ),
            ),
          ),
        ),
      );
    }

    testWidgets('renders a row per favorite', (tester) async {
      await mockNetworkImages(() async {
        await pumpScreen(tester);
        favoriteIds.add(['1', '2', '3']);
        await tester.pumpAndSettle();

        expect(find.text('Meal 1'), findsOneWidget);
        expect(find.text('Meal 2'), findsOneWidget);
        expect(find.text('Meal 3'), findsOneWidget);
      });
    });

    // The bug this guards: `ListView.builder` matches children to elements by
    // index, and a local key is not reclaimed across an index shift. Without
    // `findChildIndexCallback` every row below a removed one is destroyed and
    // rebuilt, which re-runs `BlocProvider.create` and so re-fetches the row.
    testWidgets('does not refetch surviving rows when one is removed', (
      tester,
    ) async {
      await mockNetworkImages(() async {
        await pumpScreen(tester);
        favoriteIds.add(['1', '2', '3', '4', '5']);
        await tester.pumpAndSettle();

        // Every row has loaded once by now. Only removal-driven fetches count.
        clearInteractions(getFavoriteQuery);

        // The middle row, so rows shift on both counts either side of it.
        favoriteIds.add(['1', '2', '4', '5']);
        await tester.pumpAndSettle();

        verifyNever(() => getFavoriteQuery.get(any()));
        expect(find.text('Meal 3'), findsNothing);
        expect(find.text('Meal 5'), findsOneWidget);
      });
    });

    // The other half of the equality fix, observed where the user feels it.
    // Identity is the assertion: a rebuild would put a new ListView instance in
    // the tree, so finding the same one proves no rebuild happened.
    testWidgets('does not rebuild the list when the ids are unchanged', (
      tester,
    ) async {
      await mockNetworkImages(() async {
        await pumpScreen(tester);
        favoriteIds.add(['1', '2']);
        await tester.pumpAndSettle();
        final before = tester.widget<ListView>(find.byType(ListView));

        favoriteIds.add(['1', '2']);
        await tester.pumpAndSettle();

        expect(tester.widget<ListView>(find.byType(ListView)), same(before));
      });
    });
  });
}
