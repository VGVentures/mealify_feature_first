import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meal_details/meal_details.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:mocktail/mocktail.dart';

class _MockMealDetailsComponent extends Mock implements MealDetailsComponent {}

class _MockMealsRepository extends Mock implements IMealsRepository {}

class _MockHttpClient extends Mock implements HttpClient {}

class _MockHttpClientRequest extends Mock implements HttpClientRequest {}

class _MockHttpClientResponse extends Mock implements HttpClientResponse {}

class _MockHttpHeaders extends Mock implements HttpHeaders {}

// Minimal valid 1x1 transparent PNG
final _transparentPixel = Uint8List.fromList([
  0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, //
  0x00, 0x00, 0x00, 0x0d, 0x49, 0x48, 0x44, 0x52,
  0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
  0x08, 0x06, 0x00, 0x00, 0x00, 0x1f, 0x15, 0xc4,
  0x89, 0x00, 0x00, 0x00, 0x0a, 0x49, 0x44, 0x41,
  0x54, 0x78, 0x9c, 0x62, 0x00, 0x00, 0x00, 0x02,
  0x00, 0x01, 0xe5, 0x27, 0xde, 0xfc, 0x00, 0x00,
  0x00, 0x00, 0x49, 0x45, 0x4e, 0x44, 0xae, 0x42,
  0x60, 0x82,
]);

class _TestHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    final client = _MockHttpClient();
    final request = _MockHttpClientRequest();
    final response = _MockHttpClientResponse();
    final headers = _MockHttpHeaders();

    when(() => client.getUrl(any())).thenAnswer((_) async => request);
    when(() => request.headers).thenReturn(headers);
    when(request.close).thenAnswer((_) async => response);
    when(() => response.statusCode).thenReturn(HttpStatus.ok);
    when(() => response.contentLength).thenReturn(_transparentPixel.length);
    when(() => response.compressionState).thenReturn(
      HttpClientResponseCompressionState.notCompressed,
    );
    when(
      () => response.listen(
        any(),
        onDone: any(named: 'onDone'),
        onError: any(named: 'onError'),
        cancelOnError: any(named: 'cancelOnError'),
      ),
    ).thenAnswer((invocation) {
      final onData =
          invocation.positionalArguments[0] as void Function(List<int>);
      final onDone = invocation.namedArguments[#onDone] as void Function()?;
      onData(_transparentPixel);
      onDone?.call();
      return const Stream<List<int>>.empty().listen((_) {});
    });

    return client;
  }
}

void main() {
  group('MealDetailsView', () {
    late _MockMealDetailsComponent component;
    late _MockMealsRepository mealsRepository;

    setUpAll(() {
      registerFallbackValue(Uri());
      HttpOverrides.global = _TestHttpOverrides();
    });

    tearDownAll(() {
      HttpOverrides.global = null;
    });

    setUp(() {
      component = _MockMealDetailsComponent();
      mealsRepository = _MockMealsRepository();

      when(() => component.mealsRepository).thenReturn(mealsRepository);
    });

    Widget buildSubject() {
      return MaterialApp(
        localizationsDelegates: MealifyLocalizations.localizationsDelegates,
        supportedLocales: MealifyLocalizations.supportedLocales,
        home: MealDetailsView(component: component, mealId: 'MID'),
      );
    }

    testWidgets('renders LoadingView while meal is loading', (tester) async {
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenAnswer((_) => Completer<Meal>().future);

      await tester.pumpWidget(buildSubject());
      await tester.pump();

      expect(find.byType(LoadingView), findsOneWidget);
    });

    testWidgets('renders ErrorView when meal fails to load', (tester) async {
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenThrow(Exception('Something went wrong'));

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      expect(find.byType(ErrorView), findsOneWidget);
    });

    testWidgets('renders DetailsView when meal loads successfully', (
      tester,
    ) async {
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenAnswer(
        (_) async => const Meal(
          id: 'MID',
          title: 'Spaghetti',
          instructions: 'Boil water',
          thumbnail: 'https://example.com/meal.jpg',
        ),
      );

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      expect(find.byType(DetailsView), findsOneWidget);
      expect(find.text('Spaghetti'), findsOneWidget);
    });
  });
}
