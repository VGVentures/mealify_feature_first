import 'package:fetch_client/fetch_client.dart';
import 'package:http/http.dart' as http;

/// Creates an http client that uses the web standards latest technology: Fetch
http.Client httpClientFactory() {
  return FetchClient(mode: RequestMode.cors);
}
