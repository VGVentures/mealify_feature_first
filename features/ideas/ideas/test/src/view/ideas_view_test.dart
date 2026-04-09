import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ideas/ideas.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

class _MockIdeasInteractor extends MockCubit<IdeasState>
    implements IdeasInteractor {}

void main() {
  group('IdeasView', () {
    late _MockIdeasInteractor interactor;
    late IdeasListener listener;

    setUp(() {
      interactor = _MockIdeasInteractor();
      listener = IdeasListener(
        onMealTapped: (_) {},
        onDrinkTapped: (_) {},
      );
      when(interactor.generateNewIdea).thenAnswer((_) async {});
    });

    Widget buildSubject() {
      return MaterialApp(
        localizationsDelegates: MealifyLocalizations.localizationsDelegates,
        supportedLocales: MealifyLocalizations.supportedLocales,
        home: MultiProvider(
          providers: [
            Provider<IdeasListener>.value(value: listener),
            BlocProvider<IdeasInteractor>.value(value: interactor),
          ],
          child: const IdeasView(),
        ),
      );
    }

    testWidgets('renders LoadingView for IdeasLoading', (tester) async {
      when(() => interactor.state).thenReturn(const IdeasLoading());

      await tester.pumpWidget(buildSubject());
      await tester.pump();

      expect(find.byType(LoadingView), findsOneWidget);
    });

    testWidgets('renders ErrorView for IdeasError', (tester) async {
      when(() => interactor.state).thenReturn(
        const IdeasError('Something went wrong'),
      );

      await tester.pumpWidget(buildSubject());
      await tester.pump();

      expect(find.byType(ErrorView), findsOneWidget);
    });

    testWidgets('calls generateNewIdea on initState', (tester) async {
      when(() => interactor.state).thenReturn(const IdeasLoading());

      await tester.pumpWidget(buildSubject());
      await tester.pump();

      verify(interactor.generateNewIdea).called(1);
    });
  });
}
