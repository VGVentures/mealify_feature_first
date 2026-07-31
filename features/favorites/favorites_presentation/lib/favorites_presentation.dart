/// The favorites screens.
///
/// This primary barrel re-exports every subfeature barrel. An app that wants
/// only one screen should import that screen's barrel instead, so a deferred
/// import pulls in one screen rather than the whole feature.
library;

export 'favorite_details.dart';
export 'favorites_list.dart';
