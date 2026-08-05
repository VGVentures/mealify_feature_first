import 'dart:io';

import 'package:cronet_http/cronet_http.dart';
import 'package:cupertino_http/cupertino_http.dart';
import 'package:http/io_client.dart';
import 'package:http_client_factory/src/http_client_factory_io.dart';
import 'package:test/test.dart';

/// `httpClientFactory` chooses its client from `Platform`, so each case can
/// only run on the platform it is about, and each carries a skip reason rather
/// than a `Platform` branch inside one test.
///
/// The difference matters on CI, which runs Linux. One test branching on
/// `Platform` would assert `IOClient` there and pass, and `IOClient` is also
/// what this factory's `try`/`catch` returns when building a native client
/// throws. A green run would therefore read as having covered the native
/// clients while never having exercised one. A skip says so out loud.
void main() {
  group('httpClientFactory', () {
    final isApple = Platform.isIOS || Platform.isMacOS;
    final host = Platform.operatingSystem;

    test(
      'builds a CupertinoClient on iOS and macOS',
      () {
        final client = httpClientFactory();
        addTearDown(client.close);

        expect(client, isA<CupertinoClient>());
      },
      skip: isApple ? null : 'iOS and macOS only. Host is $host.',
    );

    test(
      'builds a CronetClient on Android',
      () {
        final client = httpClientFactory();
        addTearDown(client.close);

        expect(client, isA<CronetClient>());
      },
      skip: Platform.isAndroid ? null : 'Android only. Host is $host.',
    );

    test(
      'falls back to an IOClient where there is no native client',
      () {
        final client = httpClientFactory();
        addTearDown(client.close);

        expect(client, isA<IOClient>());
      },
      skip: isApple || Platform.isAndroid
          ? 'Only for a platform with no native client. Host is $host.'
          : null,
    );
  });
}
