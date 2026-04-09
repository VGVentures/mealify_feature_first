import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:drink_details/drink_details.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:mocktail/mocktail.dart';

class _MockDrinkDetailsComponent extends Mock
    implements DrinkDetailsComponent {}

class _MockDrinksRepository extends Mock implements IDrinksRepository {}

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
  group('DrinkDetailsView', () {
    late _MockDrinkDetailsComponent component;
    late _MockDrinksRepository drinksRepository;

    setUpAll(() {
      registerFallbackValue(Uri());
      HttpOverrides.global = _TestHttpOverrides();
    });

    tearDownAll(() {
      HttpOverrides.global = null;
    });

    setUp(() {
      component = _MockDrinkDetailsComponent();
      drinksRepository = _MockDrinksRepository();

      when(() => component.drinksRepository).thenReturn(drinksRepository);
    });

    Widget buildSubject() {
      return MaterialApp(
        localizationsDelegates: MealifyLocalizations.localizationsDelegates,
        supportedLocales: MealifyLocalizations.supportedLocales,
        home: DrinkDetailsView(component: component, drinkId: 'DID'),
      );
    }

    testWidgets('renders LoadingView while drink is loading', (tester) async {
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenAnswer((_) => Completer<Drink>().future);

      await tester.pumpWidget(buildSubject());
      await tester.pump();

      expect(find.byType(LoadingView), findsOneWidget);
    });

    testWidgets('renders ErrorView when drink fails to load', (tester) async {
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenThrow(Exception('Something went wrong'));

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      expect(find.byType(ErrorView), findsOneWidget);
    });

    testWidgets('renders DetailsView when drink loads successfully', (
      tester,
    ) async {
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenAnswer(
        (_) async => const Drink(
          id: 'DID',
          title: 'Margarita',
          instructions: 'Mix ingredients',
          thumbnail: 'https://example.com/drink.jpg',
        ),
      );

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      expect(find.byType(DetailsView), findsOneWidget);
      expect(find.text('Margarita'), findsOneWidget);
    });
  });
}
