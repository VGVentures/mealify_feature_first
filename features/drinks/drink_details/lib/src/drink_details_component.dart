import 'package:drinks_domain/drinks_domain.dart';

/// Declares the dependencies a DrinkDetails RIB needs from its parent.
///
/// The parent's Component class implements this interface, providing
/// compile-time safety for dependency contracts.
abstract interface class DrinkDetailsComponent {
  /// The repository for accessing drink data.
  IDrinksRepository get drinksRepository;
}
