// dart format off
// coverage:ignore-file
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'mealify_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of MealifyLocalizations
/// returned by `MealifyLocalizations.of(context)`.
///
/// Applications need to include `MealifyLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/mealify_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: MealifyLocalizations.localizationsDelegates,
///   supportedLocales: MealifyLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the MealifyLocalizations.supportedLocales
/// property.
abstract class MealifyLocalizations {
  MealifyLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static MealifyLocalizations of(BuildContext context) {
    return Localizations.of<MealifyLocalizations>(context, MealifyLocalizations)!;
  }

  static const LocalizationsDelegate<MealifyLocalizations> delegate = _MealifyLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// Text shown on the button that adds the meal + drink combo to favorites
  ///
  /// In en, this message translates to:
  /// **'Add to favorites'**
  String get addToFavoritesButtonText;

  /// Text shown in the TabBar of the favorites details page
  ///
  /// In en, this message translates to:
  /// **'Cocktail'**
  String get drinkDetailsTitle;

  /// The name of the favorites tab
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favoritesLabel;

  /// The name of the favorite details page
  ///
  /// In en, this message translates to:
  /// **'Favorite'**
  String get favoriteDetailsTitle;

  /// The name of the ideas tab
  ///
  /// In en, this message translates to:
  /// **'Ideas'**
  String get ideasLabel;

  /// Text shown on the tab that shows ingredients for a meal or drink
  ///
  /// In en, this message translates to:
  /// **'Ingredients'**
  String get ingredientsTabText;

  /// Text shown on the tab that shows instructions for a meal or drink
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get instructionsTabText;

  /// Text shown in the AppBar of the Mealify App
  ///
  /// In en, this message translates to:
  /// **'Mealify'**
  String get mealifyAppTitle;

  /// Text shown in the TabBar of the favorites details page
  ///
  /// In en, this message translates to:
  /// **'Meal'**
  String get mealDetailsTitle;

  /// Text shown on the favorites details page when no favorite is found
  ///
  /// In en, this message translates to:
  /// **'Favorite Not Found'**
  String get favoriteDetailsNotFound;

  /// Text shown on the button that removes the meal + drink combo from favorites
  ///
  /// In en, this message translates to:
  /// **'Remove favorite'**
  String get removeFromFavoritesButtonText;

  /// Text shown on the button that loads another random meal
  ///
  /// In en, this message translates to:
  /// **'Show me more!'**
  String get showMeMoreButtonText;
}

class _MealifyLocalizationsDelegate extends LocalizationsDelegate<MealifyLocalizations> {
  const _MealifyLocalizationsDelegate();

  @override
  Future<MealifyLocalizations> load(Locale locale) {
    return SynchronousFuture<MealifyLocalizations>(lookupMealifyLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_MealifyLocalizationsDelegate old) => false;
}

MealifyLocalizations lookupMealifyLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return MealifyLocalizationsEn();
  }

  throw FlutterError(
    'MealifyLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
