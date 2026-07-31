/// Builds an `http.Client` backed by the platform's own networking stack, so
/// proxies and VPNs work and debugging proxies can see the traffic.
library;

export 'src/http_client_factory.dart';
