import 'package:bloc_test/bloc_test.dart';
import 'package:favorites_list/favorites_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

class _MockFavoritesListInteractor extends MockCubit<FavoritesListState>
    implements FavoritesListInteractor {}

class _MockFavoritesListComponent extends Mock
    implements FavoritesListComponent {}

void main() {
  group('FavoritesListView', () {
    late _MockFavoritesListInteractor interactor;
    late _MockFavoritesListComponent component;

    setUp(() {
      interactor = _MockFavoritesListInteractor();
      component = _MockFavoritesListComponent();
    });

    Widget buildSubject() {
      return MaterialApp(
        localizationsDelegates: MealifyLocalizations.localizationsDelegates,
        supportedLocales: MealifyLocalizations.supportedLocales,
        home: MultiProvider(
          providers: [
            Provider<FavoritesListComponent>.value(value: component),
            Provider<FavoritesListItemListener>.value(
              value: FavoritesListItemListener(
                onFavoriteTapped: (_) {},
                onFavoriteRemoved: (_) {},
              ),
            ),
            BlocProvider<FavoritesListInteractor>.value(value: interactor),
          ],
          child: const FavoritesListView(),
        ),
      );
    }

    testWidgets('renders LoadingView for FavoritesListLoading', (tester) async {
      when(() => interactor.state).thenReturn(const FavoritesListLoading());

      await tester.pumpWidget(buildSubject());
      await tester.pump();

      expect(find.byType(LoadingView), findsOneWidget);
    });

    testWidgets('renders ErrorView for FavoritesListError', (tester) async {
      when(() => interactor.state).thenReturn(
        const FavoritesListError('Something went wrong'),
      );

      await tester.pumpWidget(buildSubject());
      await tester.pump();

      expect(find.byType(ErrorView), findsOneWidget);
    });

    testWidgets('does not render LoadingView or ErrorView for success', (
      tester,
    ) async {
      when(() => interactor.state).thenReturn(
        const FavoritesListSuccess(favorites: []),
      );

      await tester.pumpWidget(buildSubject());
      await tester.pump();

      expect(find.byType(LoadingView), findsNothing);
      expect(find.byType(ErrorView), findsNothing);
    });

    testWidgets('calls watchFavoriteIds on initState', (tester) async {
      when(() => interactor.state).thenReturn(const FavoritesListLoading());

      await tester.pumpWidget(buildSubject());
      await tester.pump();

      verify(interactor.watchFavoriteIds).called(1);
    });
  });
}
