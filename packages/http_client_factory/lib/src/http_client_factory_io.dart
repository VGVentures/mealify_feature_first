import 'dart:io';

import 'package:cronet_http/cronet_http.dart';
import 'package:cupertino_http/cupertino_http.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

// Best guess at a size to use for the http cache, based on the recommendation
// from the Flutter team. If we do not provide any value, we get no http
// caching.
const int _maxCacheSize = 2 * 1024 * 1024;

/// A function that generates an httpClient for native platforms, such as iOS
/// and Android. These clients use the native http clients from the platforms
/// rather than Dart's built-in http clients. This allows far better support
/// for standard technologies, such as proxies and vpns.
http.Client httpClientFactory() {
  try {
    if (Platform.isIOS || Platform.isMacOS) {
      final config = URLSessionConfiguration.ephemeralSessionConfiguration()
        ..cache = URLCache.withCapacity(memoryCapacity: _maxCacheSize);
      return CupertinoClient.fromSessionConfiguration(config);
    } else if (Platform.isAndroid) {
      final engine = CronetEngine.build(
        cacheMode: CacheMode.memory,
        cacheMaxSize: _maxCacheSize,
      );

      return CronetClient.fromCronetEngine(engine, closeEngine: true);
    }
  } on Object catch (_) {
    // We must wrap the Android configuration in particular in a try/catch
    // block. If we do not, and the user does not have Play services installed,
    // creating a cronet client will fail.
    return _fallbackHttpClient();
  }

  return _fallbackHttpClient();
}

http.Client _fallbackHttpClient() {
  return IOClient(HttpClient());
}
