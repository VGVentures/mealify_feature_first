import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_list_item/favorites_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:mocktail/mocktail.dart';

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

class _MockFavoritesListItemComponent extends Mock
    implements FavoritesListItemComponent {}

class _MockMealsRepository extends Mock implements IMealsRepository {}

class _MockDrinksRepository extends Mock implements IDrinksRepository {}

class _MockFavoritesRepository extends Mock implements IFavoritesRepository {}

void main() {
  group('FavoritesListItemView', () {
    late _MockFavoritesListItemComponent component;
    late _MockMealsRepository mealsRepository;
    late _MockDrinksRepository drinksRepository;
    late _MockFavoritesRepository favoritesRepository;
    late FavoritesListItemListener listener;

    setUpAll(() {
      registerFallbackValue(Uri());
      HttpOverrides.global = _TestHttpOverrides();
    });

    tearDownAll(() {
      HttpOverrides.global = null;
    });

    setUp(() {
      component = _MockFavoritesListItemComponent();
      mealsRepository = _MockMealsRepository();
      drinksRepository = _MockDrinksRepository();
      favoritesRepository = _MockFavoritesRepository();

      when(() => component.mealsRepository).thenReturn(mealsRepository);
      when(() => component.drinksRepository).thenReturn(drinksRepository);
      when(
        () => component.favoritesRepository,
      ).thenReturn(favoritesRepository);

      listener = FavoritesListItemListener(
        onFavoriteTapped: (_) {},
        onFavoriteRemoved: (_) {},
      );
    });

    Widget buildSubject() {
      return MaterialApp(
        home: Scaffold(
          body: FavoritesListItemView(
            component: component,
            listener: listener,
            favoriteId: 'FID',
          ),
        ),
      );
    }

    testWidgets('renders loading skeleton while favorite is loading', (
      tester,
    ) async {
      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer((_) => Completer<Favorite?>().future);

      await tester.pumpWidget(buildSubject());

      expect(find.text('Dummy Title'), findsOneWidget);
    });

    testWidgets('renders nothing when favorite is not found', (tester) async {
      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer((_) async => null);

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      expect(find.byType(SizedBox), findsOneWidget);
    });

    testWidgets('renders error when favorite fails to load', (tester) async {
      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenThrow(Exception('favorite error'));

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      expect(find.textContaining('favorite error'), findsOneWidget);
    });

    testWidgets('renders shimmer while meal and drink are loading', (
      tester,
    ) async {
      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer(
        (_) async => Favorite(
          id: 'FID',
          mealId: 'MID',
          drinkId: 'DID',
          createdAt: DateTime(2026),
        ),
      );
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenAnswer((_) => Completer<Meal>().future);
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenAnswer((_) => Completer<Drink>().future);

      await tester.pumpWidget(buildSubject());
      await tester.pump();

      expect(find.text('Dummy Title'), findsOneWidget);
    });

    testWidgets('renders success when all data loads', (tester) async {
      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer(
        (_) async => Favorite(
          id: 'FID',
          mealId: 'MID',
          drinkId: 'DID',
          createdAt: DateTime(2026),
        ),
      );
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenAnswer(
        (_) async => const Meal(
          id: 'MID',
          title: 'Spaghetti',
          instructions: 'Boil',
          thumbnail: 'https://example.com/meal.jpg',
        ),
      );
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenAnswer(
        (_) async => const Drink(
          id: 'DID',
          title: 'Margarita',
          instructions: 'Mix',
          thumbnail: 'https://example.com/drink.jpg',
        ),
      );

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      expect(find.text('Spaghetti'), findsOneWidget);
      expect(find.text('Margarita'), findsOneWidget);
    });

    testWidgets('renders error when meal fails but drink succeeds', (
      tester,
    ) async {
      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer(
        (_) async => Favorite(
          id: 'FID',
          mealId: 'MID',
          drinkId: 'DID',
          createdAt: DateTime(2026),
        ),
      );
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenThrow(Exception('meal error'));
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenAnswer(
        (_) async => const Drink(
          id: 'DID',
          title: 'Margarita',
          instructions: 'Mix',
          thumbnail: 'https://example.com/drink.jpg',
        ),
      );

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      expect(find.text('Failed to load'), findsOneWidget);
    });

    testWidgets('renders error when drink fails but meal succeeds', (
      tester,
    ) async {
      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer(
        (_) async => Favorite(
          id: 'FID',
          mealId: 'MID',
          drinkId: 'DID',
          createdAt: DateTime(2026),
        ),
      );
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenAnswer(
        (_) async => const Meal(
          id: 'MID',
          title: 'Spaghetti',
          instructions: 'Boil',
          thumbnail: 'https://example.com/meal.jpg',
        ),
      );
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenThrow(Exception('drink error'));

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      expect(find.text('Failed to load'), findsOneWidget);
    });

    testWidgets('calls onFavoriteTapped when tapped', (tester) async {
      String? tappedId;
      listener = FavoritesListItemListener(
        onFavoriteTapped: (id) => tappedId = id,
        onFavoriteRemoved: (_) {},
      );

      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer(
        (_) async => Favorite(
          id: 'FID',
          mealId: 'MID',
          drinkId: 'DID',
          createdAt: DateTime(2026),
        ),
      );
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenAnswer(
        (_) async => const Meal(
          id: 'MID',
          title: 'Spaghetti',
          instructions: 'Boil',
          thumbnail: 'https://example.com/meal.jpg',
        ),
      );
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenAnswer(
        (_) async => const Drink(
          id: 'DID',
          title: 'Margarita',
          instructions: 'Mix',
          thumbnail: 'https://example.com/drink.jpg',
        ),
      );

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      await tester.tap(find.text('Spaghetti'));

      expect(tappedId, 'FID');
    });

    testWidgets('calls onFavoriteRemoved when dismissed', (tester) async {
      String? removedId;

      when(
        () => favoritesRepository.getFavoriteById('FID'),
      ).thenAnswer(
        (_) async => Favorite(
          id: 'FID',
          mealId: 'MID',
          drinkId: 'DID',
          createdAt: DateTime(2026),
        ),
      );
      when(
        () => mealsRepository.getMealById('MID'),
      ).thenAnswer(
        (_) async => const Meal(
          id: 'MID',
          title: 'Spaghetti',
          instructions: 'Boil',
          thumbnail: 'https://example.com/meal.jpg',
        ),
      );
      when(
        () => drinksRepository.getDrinkById('DID'),
      ).thenAnswer(
        (_) async => const Drink(
          id: 'DID',
          title: 'Margarita',
          instructions: 'Mix',
          thumbnail: 'https://example.com/drink.jpg',
        ),
      );

      // Use a stateful wrapper that removes the item on dismiss,
      // mimicking the real parent behavior.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: _DismissTestWrapper(
              component: component,
              onFavoriteRemoved: (id) => removedId = id,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      // Swipe to dismiss
      await tester.drag(find.text('Spaghetti'), const Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(removedId, 'FID');
    });
  });
}

class _DismissTestWrapper extends StatefulWidget {
  const _DismissTestWrapper({
    required this.component,
    required this.onFavoriteRemoved,
  });

  final FavoritesListItemComponent component;
  final void Function(String id) onFavoriteRemoved;

  @override
  State<_DismissTestWrapper> createState() => _DismissTestWrapperState();
}

class _DismissTestWrapperState extends State<_DismissTestWrapper> {
  bool _showItem = true;

  @override
  Widget build(BuildContext context) {
    if (!_showItem) return const SizedBox.shrink();

    return FavoritesListItemView(
      component: widget.component,
      listener: FavoritesListItemListener(
        onFavoriteTapped: (_) {},
        onFavoriteRemoved: (id) {
          setState(() => _showItem = false);
          widget.onFavoriteRemoved(id);
        },
      ),
      favoriteId: 'FID',
    );
  }
}
