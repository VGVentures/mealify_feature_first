import 'package:flutter/widgets.dart';
import 'package:mealify_localizations/src/l10n/gen/mealify_localizations.dart';

/// Extensions on BuildContext to make it easier to get mealify localizations
extension MealifyLocalizationsX on BuildContext {
  /// A method to get Mealify localizations from the Build Context
  MealifyLocalizations get l10n => MealifyLocalizations.of(this);
}
