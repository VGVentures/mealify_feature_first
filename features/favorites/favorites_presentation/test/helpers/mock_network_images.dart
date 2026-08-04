// Copied from `shared/mealify_design_system/test/helpers/`, which CLAUDE.md
// points at as the reference for this. Test helpers live under `test/`, so
// they are not on any package's public surface and cannot be imported across
// packages without exporting them from `lib/`. Copying is the lesser evil.
//
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/painting.dart';
import 'package:mocktail/mocktail.dart';

/// A transparent 1x1 PNG, enough for [NetworkImage] to decode successfully.
final _transparentPixelPng = Uint8List.fromList(<int>[
  0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, //
  0x00, 0x00, 0x00, 0x0D, 0x49, 0x48, 0x44, 0x52,
  0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
  0x08, 0x06, 0x00, 0x00, 0x00, 0x1F, 0x15, 0xC4,
  0x89, 0x00, 0x00, 0x00, 0x0A, 0x49, 0x44, 0x41,
  0x54, 0x78, 0x9C, 0x63, 0x00, 0x01, 0x00, 0x00,
  0x05, 0x00, 0x01, 0x0D, 0x0A, 0x2D, 0xB4, 0x00,
  0x00, 0x00, 0x00, 0x49, 0x45, 0x4E, 0x44, 0xAE,
  0x42, 0x60, 0x82,
]);

class _MockHttpClient extends Mock implements HttpClient {}

class _MockHttpClientRequest extends Mock implements HttpClientRequest {}

class _MockHttpClientResponse extends Mock implements HttpClientResponse {}

class _MockHttpHeaders extends Mock implements HttpHeaders {}

var _fallbacksRegistered = false;

void _registerFallbacks() {
  if (_fallbacksRegistered) return;
  registerFallbackValue(Uri());
  registerFallbackValue((List<int> _) {});
  _fallbacksRegistered = true;
}

HttpClient _createMockImageHttpClient() {
  _registerFallbacks();

  final client = _MockHttpClient();
  final request = _MockHttpClientRequest();
  final response = _MockHttpClientResponse();
  final headers = _MockHttpHeaders();

  when(() => client.getUrl(any())).thenAnswer((_) async => request);
  when(() => request.headers).thenReturn(headers);
  when(request.close).thenAnswer((_) async => response);
  when(() => response.statusCode).thenReturn(HttpStatus.ok);
  when(() => response.contentLength).thenReturn(_transparentPixelPng.length);
  when(
    () => response.compressionState,
  ).thenReturn(HttpClientResponseCompressionState.notCompressed);
  when(
    () => response.listen(
      any(),
      onError: any(named: 'onError'),
      onDone: any(named: 'onDone'),
      cancelOnError: any(named: 'cancelOnError'),
    ),
  ).thenAnswer((invocation) {
    final onData =
        invocation.positionalArguments.first as void Function(List<int>);
    final onDone = invocation.namedArguments[#onDone] as void Function()?;

    return Stream<List<int>>.fromIterable([
      _transparentPixelPng,
    ]).listen(onData, onDone: onDone);
  });

  return client;
}

/// Runs [body] with every [NetworkImage] request answered by a 1x1 PNG.
///
/// Widget tests have no network, so an unmocked [NetworkImage] throws a
/// `NetworkImageLoadException` and fails the test for a reason that has nothing
/// to do with what it asserts. [NetworkImage] holds a single static
/// [HttpClient], so `HttpOverrides` cannot reach it and
/// [debugNetworkImageHttpClientProvider] is the supported hook.
Future<T> mockNetworkImages<T>(Future<T> Function() body) async {
  debugNetworkImageHttpClientProvider = _createMockImageHttpClient;
  try {
    return await body();
  } finally {
    debugNetworkImageHttpClientProvider = null;
  }
}
