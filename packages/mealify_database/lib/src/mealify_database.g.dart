// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mealify_database.dart';

// ignore_for_file: type=lint
class Meals extends Table with TableInfo<Meals, Meal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Meals(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMealMeta = const VerificationMeta('idMeal');
  late final GeneratedColumn<String> idMeal = GeneratedColumn<String>(
    'id_meal',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL PRIMARY KEY',
  );
  static const VerificationMeta _strMealMeta = const VerificationMeta(
    'strMeal',
  );
  late final GeneratedColumn<String> strMeal = GeneratedColumn<String>(
    'str_meal',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMealAlternateMeta = const VerificationMeta(
    'strMealAlternate',
  );
  late final GeneratedColumn<String> strMealAlternate = GeneratedColumn<String>(
    'str_meal_alternate',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strCategoryMeta = const VerificationMeta(
    'strCategory',
  );
  late final GeneratedColumn<String> strCategory = GeneratedColumn<String>(
    'str_category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strAreaMeta = const VerificationMeta(
    'strArea',
  );
  late final GeneratedColumn<String> strArea = GeneratedColumn<String>(
    'str_area',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strInstructionsMeta = const VerificationMeta(
    'strInstructions',
  );
  late final GeneratedColumn<String> strInstructions = GeneratedColumn<String>(
    'str_instructions',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMealThumbMeta = const VerificationMeta(
    'strMealThumb',
  );
  late final GeneratedColumn<String> strMealThumb = GeneratedColumn<String>(
    'str_meal_thumb',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strTagsMeta = const VerificationMeta(
    'strTags',
  );
  late final GeneratedColumn<String> strTags = GeneratedColumn<String>(
    'str_tags',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strYoutubeMeta = const VerificationMeta(
    'strYoutube',
  );
  late final GeneratedColumn<String> strYoutube = GeneratedColumn<String>(
    'str_youtube',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient1Meta = const VerificationMeta(
    'strIngredient1',
  );
  late final GeneratedColumn<String> strIngredient1 = GeneratedColumn<String>(
    'str_ingredient1',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient2Meta = const VerificationMeta(
    'strIngredient2',
  );
  late final GeneratedColumn<String> strIngredient2 = GeneratedColumn<String>(
    'str_ingredient2',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient3Meta = const VerificationMeta(
    'strIngredient3',
  );
  late final GeneratedColumn<String> strIngredient3 = GeneratedColumn<String>(
    'str_ingredient3',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient4Meta = const VerificationMeta(
    'strIngredient4',
  );
  late final GeneratedColumn<String> strIngredient4 = GeneratedColumn<String>(
    'str_ingredient4',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient5Meta = const VerificationMeta(
    'strIngredient5',
  );
  late final GeneratedColumn<String> strIngredient5 = GeneratedColumn<String>(
    'str_ingredient5',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient6Meta = const VerificationMeta(
    'strIngredient6',
  );
  late final GeneratedColumn<String> strIngredient6 = GeneratedColumn<String>(
    'str_ingredient6',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient7Meta = const VerificationMeta(
    'strIngredient7',
  );
  late final GeneratedColumn<String> strIngredient7 = GeneratedColumn<String>(
    'str_ingredient7',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient8Meta = const VerificationMeta(
    'strIngredient8',
  );
  late final GeneratedColumn<String> strIngredient8 = GeneratedColumn<String>(
    'str_ingredient8',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient9Meta = const VerificationMeta(
    'strIngredient9',
  );
  late final GeneratedColumn<String> strIngredient9 = GeneratedColumn<String>(
    'str_ingredient9',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient10Meta = const VerificationMeta(
    'strIngredient10',
  );
  late final GeneratedColumn<String> strIngredient10 = GeneratedColumn<String>(
    'str_ingredient10',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient11Meta = const VerificationMeta(
    'strIngredient11',
  );
  late final GeneratedColumn<String> strIngredient11 = GeneratedColumn<String>(
    'str_ingredient11',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient12Meta = const VerificationMeta(
    'strIngredient12',
  );
  late final GeneratedColumn<String> strIngredient12 = GeneratedColumn<String>(
    'str_ingredient12',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient13Meta = const VerificationMeta(
    'strIngredient13',
  );
  late final GeneratedColumn<String> strIngredient13 = GeneratedColumn<String>(
    'str_ingredient13',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient14Meta = const VerificationMeta(
    'strIngredient14',
  );
  late final GeneratedColumn<String> strIngredient14 = GeneratedColumn<String>(
    'str_ingredient14',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient15Meta = const VerificationMeta(
    'strIngredient15',
  );
  late final GeneratedColumn<String> strIngredient15 = GeneratedColumn<String>(
    'str_ingredient15',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient16Meta = const VerificationMeta(
    'strIngredient16',
  );
  late final GeneratedColumn<String> strIngredient16 = GeneratedColumn<String>(
    'str_ingredient16',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient17Meta = const VerificationMeta(
    'strIngredient17',
  );
  late final GeneratedColumn<String> strIngredient17 = GeneratedColumn<String>(
    'str_ingredient17',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient18Meta = const VerificationMeta(
    'strIngredient18',
  );
  late final GeneratedColumn<String> strIngredient18 = GeneratedColumn<String>(
    'str_ingredient18',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient19Meta = const VerificationMeta(
    'strIngredient19',
  );
  late final GeneratedColumn<String> strIngredient19 = GeneratedColumn<String>(
    'str_ingredient19',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient20Meta = const VerificationMeta(
    'strIngredient20',
  );
  late final GeneratedColumn<String> strIngredient20 = GeneratedColumn<String>(
    'str_ingredient20',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure1Meta = const VerificationMeta(
    'strMeasure1',
  );
  late final GeneratedColumn<String> strMeasure1 = GeneratedColumn<String>(
    'str_measure1',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure2Meta = const VerificationMeta(
    'strMeasure2',
  );
  late final GeneratedColumn<String> strMeasure2 = GeneratedColumn<String>(
    'str_measure2',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure3Meta = const VerificationMeta(
    'strMeasure3',
  );
  late final GeneratedColumn<String> strMeasure3 = GeneratedColumn<String>(
    'str_measure3',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure4Meta = const VerificationMeta(
    'strMeasure4',
  );
  late final GeneratedColumn<String> strMeasure4 = GeneratedColumn<String>(
    'str_measure4',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure5Meta = const VerificationMeta(
    'strMeasure5',
  );
  late final GeneratedColumn<String> strMeasure5 = GeneratedColumn<String>(
    'str_measure5',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure6Meta = const VerificationMeta(
    'strMeasure6',
  );
  late final GeneratedColumn<String> strMeasure6 = GeneratedColumn<String>(
    'str_measure6',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure7Meta = const VerificationMeta(
    'strMeasure7',
  );
  late final GeneratedColumn<String> strMeasure7 = GeneratedColumn<String>(
    'str_measure7',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure8Meta = const VerificationMeta(
    'strMeasure8',
  );
  late final GeneratedColumn<String> strMeasure8 = GeneratedColumn<String>(
    'str_measure8',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure9Meta = const VerificationMeta(
    'strMeasure9',
  );
  late final GeneratedColumn<String> strMeasure9 = GeneratedColumn<String>(
    'str_measure9',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure10Meta = const VerificationMeta(
    'strMeasure10',
  );
  late final GeneratedColumn<String> strMeasure10 = GeneratedColumn<String>(
    'str_measure10',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure11Meta = const VerificationMeta(
    'strMeasure11',
  );
  late final GeneratedColumn<String> strMeasure11 = GeneratedColumn<String>(
    'str_measure11',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure12Meta = const VerificationMeta(
    'strMeasure12',
  );
  late final GeneratedColumn<String> strMeasure12 = GeneratedColumn<String>(
    'str_measure12',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure13Meta = const VerificationMeta(
    'strMeasure13',
  );
  late final GeneratedColumn<String> strMeasure13 = GeneratedColumn<String>(
    'str_measure13',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure14Meta = const VerificationMeta(
    'strMeasure14',
  );
  late final GeneratedColumn<String> strMeasure14 = GeneratedColumn<String>(
    'str_measure14',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure15Meta = const VerificationMeta(
    'strMeasure15',
  );
  late final GeneratedColumn<String> strMeasure15 = GeneratedColumn<String>(
    'str_measure15',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure16Meta = const VerificationMeta(
    'strMeasure16',
  );
  late final GeneratedColumn<String> strMeasure16 = GeneratedColumn<String>(
    'str_measure16',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure17Meta = const VerificationMeta(
    'strMeasure17',
  );
  late final GeneratedColumn<String> strMeasure17 = GeneratedColumn<String>(
    'str_measure17',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure18Meta = const VerificationMeta(
    'strMeasure18',
  );
  late final GeneratedColumn<String> strMeasure18 = GeneratedColumn<String>(
    'str_measure18',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure19Meta = const VerificationMeta(
    'strMeasure19',
  );
  late final GeneratedColumn<String> strMeasure19 = GeneratedColumn<String>(
    'str_measure19',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure20Meta = const VerificationMeta(
    'strMeasure20',
  );
  late final GeneratedColumn<String> strMeasure20 = GeneratedColumn<String>(
    'str_measure20',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strSourceMeta = const VerificationMeta(
    'strSource',
  );
  late final GeneratedColumn<String> strSource = GeneratedColumn<String>(
    'str_source',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strImageSourceMeta = const VerificationMeta(
    'strImageSource',
  );
  late final GeneratedColumn<String> strImageSource = GeneratedColumn<String>(
    'str_image_source',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strCreativeCommonsConfirmedMeta =
      const VerificationMeta('strCreativeCommonsConfirmed');
  late final GeneratedColumn<String> strCreativeCommonsConfirmed =
      GeneratedColumn<String>(
        'str_creative_commons_confirmed',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _dateModifiedMeta = const VerificationMeta(
    'dateModified',
  );
  late final GeneratedColumn<String> dateModified = GeneratedColumn<String>(
    'date_modified',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    idMeal,
    strMeal,
    strMealAlternate,
    strCategory,
    strArea,
    strInstructions,
    strMealThumb,
    strTags,
    strYoutube,
    strIngredient1,
    strIngredient2,
    strIngredient3,
    strIngredient4,
    strIngredient5,
    strIngredient6,
    strIngredient7,
    strIngredient8,
    strIngredient9,
    strIngredient10,
    strIngredient11,
    strIngredient12,
    strIngredient13,
    strIngredient14,
    strIngredient15,
    strIngredient16,
    strIngredient17,
    strIngredient18,
    strIngredient19,
    strIngredient20,
    strMeasure1,
    strMeasure2,
    strMeasure3,
    strMeasure4,
    strMeasure5,
    strMeasure6,
    strMeasure7,
    strMeasure8,
    strMeasure9,
    strMeasure10,
    strMeasure11,
    strMeasure12,
    strMeasure13,
    strMeasure14,
    strMeasure15,
    strMeasure16,
    strMeasure17,
    strMeasure18,
    strMeasure19,
    strMeasure20,
    strSource,
    strImageSource,
    strCreativeCommonsConfirmed,
    dateModified,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'meals';
  @override
  VerificationContext validateIntegrity(
    Insertable<Meal> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_meal')) {
      context.handle(
        _idMealMeta,
        idMeal.isAcceptableOrUnknown(data['id_meal']!, _idMealMeta),
      );
    } else if (isInserting) {
      context.missing(_idMealMeta);
    }
    if (data.containsKey('str_meal')) {
      context.handle(
        _strMealMeta,
        strMeal.isAcceptableOrUnknown(data['str_meal']!, _strMealMeta),
      );
    }
    if (data.containsKey('str_meal_alternate')) {
      context.handle(
        _strMealAlternateMeta,
        strMealAlternate.isAcceptableOrUnknown(
          data['str_meal_alternate']!,
          _strMealAlternateMeta,
        ),
      );
    }
    if (data.containsKey('str_category')) {
      context.handle(
        _strCategoryMeta,
        strCategory.isAcceptableOrUnknown(
          data['str_category']!,
          _strCategoryMeta,
        ),
      );
    }
    if (data.containsKey('str_area')) {
      context.handle(
        _strAreaMeta,
        strArea.isAcceptableOrUnknown(data['str_area']!, _strAreaMeta),
      );
    }
    if (data.containsKey('str_instructions')) {
      context.handle(
        _strInstructionsMeta,
        strInstructions.isAcceptableOrUnknown(
          data['str_instructions']!,
          _strInstructionsMeta,
        ),
      );
    }
    if (data.containsKey('str_meal_thumb')) {
      context.handle(
        _strMealThumbMeta,
        strMealThumb.isAcceptableOrUnknown(
          data['str_meal_thumb']!,
          _strMealThumbMeta,
        ),
      );
    }
    if (data.containsKey('str_tags')) {
      context.handle(
        _strTagsMeta,
        strTags.isAcceptableOrUnknown(data['str_tags']!, _strTagsMeta),
      );
    }
    if (data.containsKey('str_youtube')) {
      context.handle(
        _strYoutubeMeta,
        strYoutube.isAcceptableOrUnknown(data['str_youtube']!, _strYoutubeMeta),
      );
    }
    if (data.containsKey('str_ingredient1')) {
      context.handle(
        _strIngredient1Meta,
        strIngredient1.isAcceptableOrUnknown(
          data['str_ingredient1']!,
          _strIngredient1Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient2')) {
      context.handle(
        _strIngredient2Meta,
        strIngredient2.isAcceptableOrUnknown(
          data['str_ingredient2']!,
          _strIngredient2Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient3')) {
      context.handle(
        _strIngredient3Meta,
        strIngredient3.isAcceptableOrUnknown(
          data['str_ingredient3']!,
          _strIngredient3Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient4')) {
      context.handle(
        _strIngredient4Meta,
        strIngredient4.isAcceptableOrUnknown(
          data['str_ingredient4']!,
          _strIngredient4Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient5')) {
      context.handle(
        _strIngredient5Meta,
        strIngredient5.isAcceptableOrUnknown(
          data['str_ingredient5']!,
          _strIngredient5Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient6')) {
      context.handle(
        _strIngredient6Meta,
        strIngredient6.isAcceptableOrUnknown(
          data['str_ingredient6']!,
          _strIngredient6Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient7')) {
      context.handle(
        _strIngredient7Meta,
        strIngredient7.isAcceptableOrUnknown(
          data['str_ingredient7']!,
          _strIngredient7Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient8')) {
      context.handle(
        _strIngredient8Meta,
        strIngredient8.isAcceptableOrUnknown(
          data['str_ingredient8']!,
          _strIngredient8Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient9')) {
      context.handle(
        _strIngredient9Meta,
        strIngredient9.isAcceptableOrUnknown(
          data['str_ingredient9']!,
          _strIngredient9Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient10')) {
      context.handle(
        _strIngredient10Meta,
        strIngredient10.isAcceptableOrUnknown(
          data['str_ingredient10']!,
          _strIngredient10Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient11')) {
      context.handle(
        _strIngredient11Meta,
        strIngredient11.isAcceptableOrUnknown(
          data['str_ingredient11']!,
          _strIngredient11Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient12')) {
      context.handle(
        _strIngredient12Meta,
        strIngredient12.isAcceptableOrUnknown(
          data['str_ingredient12']!,
          _strIngredient12Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient13')) {
      context.handle(
        _strIngredient13Meta,
        strIngredient13.isAcceptableOrUnknown(
          data['str_ingredient13']!,
          _strIngredient13Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient14')) {
      context.handle(
        _strIngredient14Meta,
        strIngredient14.isAcceptableOrUnknown(
          data['str_ingredient14']!,
          _strIngredient14Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient15')) {
      context.handle(
        _strIngredient15Meta,
        strIngredient15.isAcceptableOrUnknown(
          data['str_ingredient15']!,
          _strIngredient15Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient16')) {
      context.handle(
        _strIngredient16Meta,
        strIngredient16.isAcceptableOrUnknown(
          data['str_ingredient16']!,
          _strIngredient16Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient17')) {
      context.handle(
        _strIngredient17Meta,
        strIngredient17.isAcceptableOrUnknown(
          data['str_ingredient17']!,
          _strIngredient17Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient18')) {
      context.handle(
        _strIngredient18Meta,
        strIngredient18.isAcceptableOrUnknown(
          data['str_ingredient18']!,
          _strIngredient18Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient19')) {
      context.handle(
        _strIngredient19Meta,
        strIngredient19.isAcceptableOrUnknown(
          data['str_ingredient19']!,
          _strIngredient19Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient20')) {
      context.handle(
        _strIngredient20Meta,
        strIngredient20.isAcceptableOrUnknown(
          data['str_ingredient20']!,
          _strIngredient20Meta,
        ),
      );
    }
    if (data.containsKey('str_measure1')) {
      context.handle(
        _strMeasure1Meta,
        strMeasure1.isAcceptableOrUnknown(
          data['str_measure1']!,
          _strMeasure1Meta,
        ),
      );
    }
    if (data.containsKey('str_measure2')) {
      context.handle(
        _strMeasure2Meta,
        strMeasure2.isAcceptableOrUnknown(
          data['str_measure2']!,
          _strMeasure2Meta,
        ),
      );
    }
    if (data.containsKey('str_measure3')) {
      context.handle(
        _strMeasure3Meta,
        strMeasure3.isAcceptableOrUnknown(
          data['str_measure3']!,
          _strMeasure3Meta,
        ),
      );
    }
    if (data.containsKey('str_measure4')) {
      context.handle(
        _strMeasure4Meta,
        strMeasure4.isAcceptableOrUnknown(
          data['str_measure4']!,
          _strMeasure4Meta,
        ),
      );
    }
    if (data.containsKey('str_measure5')) {
      context.handle(
        _strMeasure5Meta,
        strMeasure5.isAcceptableOrUnknown(
          data['str_measure5']!,
          _strMeasure5Meta,
        ),
      );
    }
    if (data.containsKey('str_measure6')) {
      context.handle(
        _strMeasure6Meta,
        strMeasure6.isAcceptableOrUnknown(
          data['str_measure6']!,
          _strMeasure6Meta,
        ),
      );
    }
    if (data.containsKey('str_measure7')) {
      context.handle(
        _strMeasure7Meta,
        strMeasure7.isAcceptableOrUnknown(
          data['str_measure7']!,
          _strMeasure7Meta,
        ),
      );
    }
    if (data.containsKey('str_measure8')) {
      context.handle(
        _strMeasure8Meta,
        strMeasure8.isAcceptableOrUnknown(
          data['str_measure8']!,
          _strMeasure8Meta,
        ),
      );
    }
    if (data.containsKey('str_measure9')) {
      context.handle(
        _strMeasure9Meta,
        strMeasure9.isAcceptableOrUnknown(
          data['str_measure9']!,
          _strMeasure9Meta,
        ),
      );
    }
    if (data.containsKey('str_measure10')) {
      context.handle(
        _strMeasure10Meta,
        strMeasure10.isAcceptableOrUnknown(
          data['str_measure10']!,
          _strMeasure10Meta,
        ),
      );
    }
    if (data.containsKey('str_measure11')) {
      context.handle(
        _strMeasure11Meta,
        strMeasure11.isAcceptableOrUnknown(
          data['str_measure11']!,
          _strMeasure11Meta,
        ),
      );
    }
    if (data.containsKey('str_measure12')) {
      context.handle(
        _strMeasure12Meta,
        strMeasure12.isAcceptableOrUnknown(
          data['str_measure12']!,
          _strMeasure12Meta,
        ),
      );
    }
    if (data.containsKey('str_measure13')) {
      context.handle(
        _strMeasure13Meta,
        strMeasure13.isAcceptableOrUnknown(
          data['str_measure13']!,
          _strMeasure13Meta,
        ),
      );
    }
    if (data.containsKey('str_measure14')) {
      context.handle(
        _strMeasure14Meta,
        strMeasure14.isAcceptableOrUnknown(
          data['str_measure14']!,
          _strMeasure14Meta,
        ),
      );
    }
    if (data.containsKey('str_measure15')) {
      context.handle(
        _strMeasure15Meta,
        strMeasure15.isAcceptableOrUnknown(
          data['str_measure15']!,
          _strMeasure15Meta,
        ),
      );
    }
    if (data.containsKey('str_measure16')) {
      context.handle(
        _strMeasure16Meta,
        strMeasure16.isAcceptableOrUnknown(
          data['str_measure16']!,
          _strMeasure16Meta,
        ),
      );
    }
    if (data.containsKey('str_measure17')) {
      context.handle(
        _strMeasure17Meta,
        strMeasure17.isAcceptableOrUnknown(
          data['str_measure17']!,
          _strMeasure17Meta,
        ),
      );
    }
    if (data.containsKey('str_measure18')) {
      context.handle(
        _strMeasure18Meta,
        strMeasure18.isAcceptableOrUnknown(
          data['str_measure18']!,
          _strMeasure18Meta,
        ),
      );
    }
    if (data.containsKey('str_measure19')) {
      context.handle(
        _strMeasure19Meta,
        strMeasure19.isAcceptableOrUnknown(
          data['str_measure19']!,
          _strMeasure19Meta,
        ),
      );
    }
    if (data.containsKey('str_measure20')) {
      context.handle(
        _strMeasure20Meta,
        strMeasure20.isAcceptableOrUnknown(
          data['str_measure20']!,
          _strMeasure20Meta,
        ),
      );
    }
    if (data.containsKey('str_source')) {
      context.handle(
        _strSourceMeta,
        strSource.isAcceptableOrUnknown(data['str_source']!, _strSourceMeta),
      );
    }
    if (data.containsKey('str_image_source')) {
      context.handle(
        _strImageSourceMeta,
        strImageSource.isAcceptableOrUnknown(
          data['str_image_source']!,
          _strImageSourceMeta,
        ),
      );
    }
    if (data.containsKey('str_creative_commons_confirmed')) {
      context.handle(
        _strCreativeCommonsConfirmedMeta,
        strCreativeCommonsConfirmed.isAcceptableOrUnknown(
          data['str_creative_commons_confirmed']!,
          _strCreativeCommonsConfirmedMeta,
        ),
      );
    }
    if (data.containsKey('date_modified')) {
      context.handle(
        _dateModifiedMeta,
        dateModified.isAcceptableOrUnknown(
          data['date_modified']!,
          _dateModifiedMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idMeal};
  @override
  Meal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Meal(
      idMeal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_meal'],
      )!,
      strMeal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_meal'],
      ),
      strMealAlternate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_meal_alternate'],
      ),
      strCategory: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_category'],
      ),
      strArea: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_area'],
      ),
      strInstructions: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_instructions'],
      ),
      strMealThumb: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_meal_thumb'],
      ),
      strTags: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_tags'],
      ),
      strYoutube: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_youtube'],
      ),
      strIngredient1: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient1'],
      ),
      strIngredient2: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient2'],
      ),
      strIngredient3: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient3'],
      ),
      strIngredient4: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient4'],
      ),
      strIngredient5: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient5'],
      ),
      strIngredient6: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient6'],
      ),
      strIngredient7: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient7'],
      ),
      strIngredient8: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient8'],
      ),
      strIngredient9: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient9'],
      ),
      strIngredient10: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient10'],
      ),
      strIngredient11: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient11'],
      ),
      strIngredient12: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient12'],
      ),
      strIngredient13: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient13'],
      ),
      strIngredient14: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient14'],
      ),
      strIngredient15: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient15'],
      ),
      strIngredient16: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient16'],
      ),
      strIngredient17: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient17'],
      ),
      strIngredient18: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient18'],
      ),
      strIngredient19: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient19'],
      ),
      strIngredient20: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient20'],
      ),
      strMeasure1: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure1'],
      ),
      strMeasure2: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure2'],
      ),
      strMeasure3: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure3'],
      ),
      strMeasure4: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure4'],
      ),
      strMeasure5: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure5'],
      ),
      strMeasure6: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure6'],
      ),
      strMeasure7: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure7'],
      ),
      strMeasure8: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure8'],
      ),
      strMeasure9: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure9'],
      ),
      strMeasure10: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure10'],
      ),
      strMeasure11: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure11'],
      ),
      strMeasure12: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure12'],
      ),
      strMeasure13: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure13'],
      ),
      strMeasure14: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure14'],
      ),
      strMeasure15: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure15'],
      ),
      strMeasure16: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure16'],
      ),
      strMeasure17: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure17'],
      ),
      strMeasure18: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure18'],
      ),
      strMeasure19: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure19'],
      ),
      strMeasure20: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure20'],
      ),
      strSource: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_source'],
      ),
      strImageSource: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_image_source'],
      ),
      strCreativeCommonsConfirmed: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_creative_commons_confirmed'],
      ),
      dateModified: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date_modified'],
      ),
    );
  }

  @override
  Meals createAlias(String alias) {
    return Meals(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Meal extends DataClass implements Insertable<Meal> {
  final String idMeal;
  final String? strMeal;
  final String? strMealAlternate;
  final String? strCategory;
  final String? strArea;
  final String? strInstructions;
  final String? strMealThumb;
  final String? strTags;
  final String? strYoutube;

  /// Ingredients (1-20)
  final String? strIngredient1;
  final String? strIngredient2;
  final String? strIngredient3;
  final String? strIngredient4;
  final String? strIngredient5;
  final String? strIngredient6;
  final String? strIngredient7;
  final String? strIngredient8;
  final String? strIngredient9;
  final String? strIngredient10;
  final String? strIngredient11;
  final String? strIngredient12;
  final String? strIngredient13;
  final String? strIngredient14;
  final String? strIngredient15;
  final String? strIngredient16;
  final String? strIngredient17;
  final String? strIngredient18;
  final String? strIngredient19;
  final String? strIngredient20;

  /// Measures (1-20)
  final String? strMeasure1;
  final String? strMeasure2;
  final String? strMeasure3;
  final String? strMeasure4;
  final String? strMeasure5;
  final String? strMeasure6;
  final String? strMeasure7;
  final String? strMeasure8;
  final String? strMeasure9;
  final String? strMeasure10;
  final String? strMeasure11;
  final String? strMeasure12;
  final String? strMeasure13;
  final String? strMeasure14;
  final String? strMeasure15;
  final String? strMeasure16;
  final String? strMeasure17;
  final String? strMeasure18;
  final String? strMeasure19;
  final String? strMeasure20;
  final String? strSource;
  final String? strImageSource;
  final String? strCreativeCommonsConfirmed;
  final String? dateModified;
  const Meal({
    required this.idMeal,
    this.strMeal,
    this.strMealAlternate,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strIngredient16,
    this.strIngredient17,
    this.strIngredient18,
    this.strIngredient19,
    this.strIngredient20,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strMeasure16,
    this.strMeasure17,
    this.strMeasure18,
    this.strMeasure19,
    this.strMeasure20,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_meal'] = Variable<String>(idMeal);
    if (!nullToAbsent || strMeal != null) {
      map['str_meal'] = Variable<String>(strMeal);
    }
    if (!nullToAbsent || strMealAlternate != null) {
      map['str_meal_alternate'] = Variable<String>(strMealAlternate);
    }
    if (!nullToAbsent || strCategory != null) {
      map['str_category'] = Variable<String>(strCategory);
    }
    if (!nullToAbsent || strArea != null) {
      map['str_area'] = Variable<String>(strArea);
    }
    if (!nullToAbsent || strInstructions != null) {
      map['str_instructions'] = Variable<String>(strInstructions);
    }
    if (!nullToAbsent || strMealThumb != null) {
      map['str_meal_thumb'] = Variable<String>(strMealThumb);
    }
    if (!nullToAbsent || strTags != null) {
      map['str_tags'] = Variable<String>(strTags);
    }
    if (!nullToAbsent || strYoutube != null) {
      map['str_youtube'] = Variable<String>(strYoutube);
    }
    if (!nullToAbsent || strIngredient1 != null) {
      map['str_ingredient1'] = Variable<String>(strIngredient1);
    }
    if (!nullToAbsent || strIngredient2 != null) {
      map['str_ingredient2'] = Variable<String>(strIngredient2);
    }
    if (!nullToAbsent || strIngredient3 != null) {
      map['str_ingredient3'] = Variable<String>(strIngredient3);
    }
    if (!nullToAbsent || strIngredient4 != null) {
      map['str_ingredient4'] = Variable<String>(strIngredient4);
    }
    if (!nullToAbsent || strIngredient5 != null) {
      map['str_ingredient5'] = Variable<String>(strIngredient5);
    }
    if (!nullToAbsent || strIngredient6 != null) {
      map['str_ingredient6'] = Variable<String>(strIngredient6);
    }
    if (!nullToAbsent || strIngredient7 != null) {
      map['str_ingredient7'] = Variable<String>(strIngredient7);
    }
    if (!nullToAbsent || strIngredient8 != null) {
      map['str_ingredient8'] = Variable<String>(strIngredient8);
    }
    if (!nullToAbsent || strIngredient9 != null) {
      map['str_ingredient9'] = Variable<String>(strIngredient9);
    }
    if (!nullToAbsent || strIngredient10 != null) {
      map['str_ingredient10'] = Variable<String>(strIngredient10);
    }
    if (!nullToAbsent || strIngredient11 != null) {
      map['str_ingredient11'] = Variable<String>(strIngredient11);
    }
    if (!nullToAbsent || strIngredient12 != null) {
      map['str_ingredient12'] = Variable<String>(strIngredient12);
    }
    if (!nullToAbsent || strIngredient13 != null) {
      map['str_ingredient13'] = Variable<String>(strIngredient13);
    }
    if (!nullToAbsent || strIngredient14 != null) {
      map['str_ingredient14'] = Variable<String>(strIngredient14);
    }
    if (!nullToAbsent || strIngredient15 != null) {
      map['str_ingredient15'] = Variable<String>(strIngredient15);
    }
    if (!nullToAbsent || strIngredient16 != null) {
      map['str_ingredient16'] = Variable<String>(strIngredient16);
    }
    if (!nullToAbsent || strIngredient17 != null) {
      map['str_ingredient17'] = Variable<String>(strIngredient17);
    }
    if (!nullToAbsent || strIngredient18 != null) {
      map['str_ingredient18'] = Variable<String>(strIngredient18);
    }
    if (!nullToAbsent || strIngredient19 != null) {
      map['str_ingredient19'] = Variable<String>(strIngredient19);
    }
    if (!nullToAbsent || strIngredient20 != null) {
      map['str_ingredient20'] = Variable<String>(strIngredient20);
    }
    if (!nullToAbsent || strMeasure1 != null) {
      map['str_measure1'] = Variable<String>(strMeasure1);
    }
    if (!nullToAbsent || strMeasure2 != null) {
      map['str_measure2'] = Variable<String>(strMeasure2);
    }
    if (!nullToAbsent || strMeasure3 != null) {
      map['str_measure3'] = Variable<String>(strMeasure3);
    }
    if (!nullToAbsent || strMeasure4 != null) {
      map['str_measure4'] = Variable<String>(strMeasure4);
    }
    if (!nullToAbsent || strMeasure5 != null) {
      map['str_measure5'] = Variable<String>(strMeasure5);
    }
    if (!nullToAbsent || strMeasure6 != null) {
      map['str_measure6'] = Variable<String>(strMeasure6);
    }
    if (!nullToAbsent || strMeasure7 != null) {
      map['str_measure7'] = Variable<String>(strMeasure7);
    }
    if (!nullToAbsent || strMeasure8 != null) {
      map['str_measure8'] = Variable<String>(strMeasure8);
    }
    if (!nullToAbsent || strMeasure9 != null) {
      map['str_measure9'] = Variable<String>(strMeasure9);
    }
    if (!nullToAbsent || strMeasure10 != null) {
      map['str_measure10'] = Variable<String>(strMeasure10);
    }
    if (!nullToAbsent || strMeasure11 != null) {
      map['str_measure11'] = Variable<String>(strMeasure11);
    }
    if (!nullToAbsent || strMeasure12 != null) {
      map['str_measure12'] = Variable<String>(strMeasure12);
    }
    if (!nullToAbsent || strMeasure13 != null) {
      map['str_measure13'] = Variable<String>(strMeasure13);
    }
    if (!nullToAbsent || strMeasure14 != null) {
      map['str_measure14'] = Variable<String>(strMeasure14);
    }
    if (!nullToAbsent || strMeasure15 != null) {
      map['str_measure15'] = Variable<String>(strMeasure15);
    }
    if (!nullToAbsent || strMeasure16 != null) {
      map['str_measure16'] = Variable<String>(strMeasure16);
    }
    if (!nullToAbsent || strMeasure17 != null) {
      map['str_measure17'] = Variable<String>(strMeasure17);
    }
    if (!nullToAbsent || strMeasure18 != null) {
      map['str_measure18'] = Variable<String>(strMeasure18);
    }
    if (!nullToAbsent || strMeasure19 != null) {
      map['str_measure19'] = Variable<String>(strMeasure19);
    }
    if (!nullToAbsent || strMeasure20 != null) {
      map['str_measure20'] = Variable<String>(strMeasure20);
    }
    if (!nullToAbsent || strSource != null) {
      map['str_source'] = Variable<String>(strSource);
    }
    if (!nullToAbsent || strImageSource != null) {
      map['str_image_source'] = Variable<String>(strImageSource);
    }
    if (!nullToAbsent || strCreativeCommonsConfirmed != null) {
      map['str_creative_commons_confirmed'] = Variable<String>(
        strCreativeCommonsConfirmed,
      );
    }
    if (!nullToAbsent || dateModified != null) {
      map['date_modified'] = Variable<String>(dateModified);
    }
    return map;
  }

  MealsCompanion toCompanion(bool nullToAbsent) {
    return MealsCompanion(
      idMeal: Value(idMeal),
      strMeal: strMeal == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeal),
      strMealAlternate: strMealAlternate == null && nullToAbsent
          ? const Value.absent()
          : Value(strMealAlternate),
      strCategory: strCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(strCategory),
      strArea: strArea == null && nullToAbsent
          ? const Value.absent()
          : Value(strArea),
      strInstructions: strInstructions == null && nullToAbsent
          ? const Value.absent()
          : Value(strInstructions),
      strMealThumb: strMealThumb == null && nullToAbsent
          ? const Value.absent()
          : Value(strMealThumb),
      strTags: strTags == null && nullToAbsent
          ? const Value.absent()
          : Value(strTags),
      strYoutube: strYoutube == null && nullToAbsent
          ? const Value.absent()
          : Value(strYoutube),
      strIngredient1: strIngredient1 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient1),
      strIngredient2: strIngredient2 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient2),
      strIngredient3: strIngredient3 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient3),
      strIngredient4: strIngredient4 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient4),
      strIngredient5: strIngredient5 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient5),
      strIngredient6: strIngredient6 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient6),
      strIngredient7: strIngredient7 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient7),
      strIngredient8: strIngredient8 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient8),
      strIngredient9: strIngredient9 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient9),
      strIngredient10: strIngredient10 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient10),
      strIngredient11: strIngredient11 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient11),
      strIngredient12: strIngredient12 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient12),
      strIngredient13: strIngredient13 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient13),
      strIngredient14: strIngredient14 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient14),
      strIngredient15: strIngredient15 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient15),
      strIngredient16: strIngredient16 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient16),
      strIngredient17: strIngredient17 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient17),
      strIngredient18: strIngredient18 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient18),
      strIngredient19: strIngredient19 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient19),
      strIngredient20: strIngredient20 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient20),
      strMeasure1: strMeasure1 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure1),
      strMeasure2: strMeasure2 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure2),
      strMeasure3: strMeasure3 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure3),
      strMeasure4: strMeasure4 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure4),
      strMeasure5: strMeasure5 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure5),
      strMeasure6: strMeasure6 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure6),
      strMeasure7: strMeasure7 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure7),
      strMeasure8: strMeasure8 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure8),
      strMeasure9: strMeasure9 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure9),
      strMeasure10: strMeasure10 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure10),
      strMeasure11: strMeasure11 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure11),
      strMeasure12: strMeasure12 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure12),
      strMeasure13: strMeasure13 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure13),
      strMeasure14: strMeasure14 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure14),
      strMeasure15: strMeasure15 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure15),
      strMeasure16: strMeasure16 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure16),
      strMeasure17: strMeasure17 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure17),
      strMeasure18: strMeasure18 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure18),
      strMeasure19: strMeasure19 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure19),
      strMeasure20: strMeasure20 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure20),
      strSource: strSource == null && nullToAbsent
          ? const Value.absent()
          : Value(strSource),
      strImageSource: strImageSource == null && nullToAbsent
          ? const Value.absent()
          : Value(strImageSource),
      strCreativeCommonsConfirmed:
          strCreativeCommonsConfirmed == null && nullToAbsent
          ? const Value.absent()
          : Value(strCreativeCommonsConfirmed),
      dateModified: dateModified == null && nullToAbsent
          ? const Value.absent()
          : Value(dateModified),
    );
  }

  factory Meal.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Meal(
      idMeal: serializer.fromJson<String>(json['id_meal']),
      strMeal: serializer.fromJson<String?>(json['str_meal']),
      strMealAlternate: serializer.fromJson<String?>(
        json['str_meal_alternate'],
      ),
      strCategory: serializer.fromJson<String?>(json['str_category']),
      strArea: serializer.fromJson<String?>(json['str_area']),
      strInstructions: serializer.fromJson<String?>(json['str_instructions']),
      strMealThumb: serializer.fromJson<String?>(json['str_meal_thumb']),
      strTags: serializer.fromJson<String?>(json['str_tags']),
      strYoutube: serializer.fromJson<String?>(json['str_youtube']),
      strIngredient1: serializer.fromJson<String?>(json['str_ingredient1']),
      strIngredient2: serializer.fromJson<String?>(json['str_ingredient2']),
      strIngredient3: serializer.fromJson<String?>(json['str_ingredient3']),
      strIngredient4: serializer.fromJson<String?>(json['str_ingredient4']),
      strIngredient5: serializer.fromJson<String?>(json['str_ingredient5']),
      strIngredient6: serializer.fromJson<String?>(json['str_ingredient6']),
      strIngredient7: serializer.fromJson<String?>(json['str_ingredient7']),
      strIngredient8: serializer.fromJson<String?>(json['str_ingredient8']),
      strIngredient9: serializer.fromJson<String?>(json['str_ingredient9']),
      strIngredient10: serializer.fromJson<String?>(json['str_ingredient10']),
      strIngredient11: serializer.fromJson<String?>(json['str_ingredient11']),
      strIngredient12: serializer.fromJson<String?>(json['str_ingredient12']),
      strIngredient13: serializer.fromJson<String?>(json['str_ingredient13']),
      strIngredient14: serializer.fromJson<String?>(json['str_ingredient14']),
      strIngredient15: serializer.fromJson<String?>(json['str_ingredient15']),
      strIngredient16: serializer.fromJson<String?>(json['str_ingredient16']),
      strIngredient17: serializer.fromJson<String?>(json['str_ingredient17']),
      strIngredient18: serializer.fromJson<String?>(json['str_ingredient18']),
      strIngredient19: serializer.fromJson<String?>(json['str_ingredient19']),
      strIngredient20: serializer.fromJson<String?>(json['str_ingredient20']),
      strMeasure1: serializer.fromJson<String?>(json['str_measure1']),
      strMeasure2: serializer.fromJson<String?>(json['str_measure2']),
      strMeasure3: serializer.fromJson<String?>(json['str_measure3']),
      strMeasure4: serializer.fromJson<String?>(json['str_measure4']),
      strMeasure5: serializer.fromJson<String?>(json['str_measure5']),
      strMeasure6: serializer.fromJson<String?>(json['str_measure6']),
      strMeasure7: serializer.fromJson<String?>(json['str_measure7']),
      strMeasure8: serializer.fromJson<String?>(json['str_measure8']),
      strMeasure9: serializer.fromJson<String?>(json['str_measure9']),
      strMeasure10: serializer.fromJson<String?>(json['str_measure10']),
      strMeasure11: serializer.fromJson<String?>(json['str_measure11']),
      strMeasure12: serializer.fromJson<String?>(json['str_measure12']),
      strMeasure13: serializer.fromJson<String?>(json['str_measure13']),
      strMeasure14: serializer.fromJson<String?>(json['str_measure14']),
      strMeasure15: serializer.fromJson<String?>(json['str_measure15']),
      strMeasure16: serializer.fromJson<String?>(json['str_measure16']),
      strMeasure17: serializer.fromJson<String?>(json['str_measure17']),
      strMeasure18: serializer.fromJson<String?>(json['str_measure18']),
      strMeasure19: serializer.fromJson<String?>(json['str_measure19']),
      strMeasure20: serializer.fromJson<String?>(json['str_measure20']),
      strSource: serializer.fromJson<String?>(json['str_source']),
      strImageSource: serializer.fromJson<String?>(json['str_image_source']),
      strCreativeCommonsConfirmed: serializer.fromJson<String?>(
        json['str_creative_commons_confirmed'],
      ),
      dateModified: serializer.fromJson<String?>(json['date_modified']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id_meal': serializer.toJson<String>(idMeal),
      'str_meal': serializer.toJson<String?>(strMeal),
      'str_meal_alternate': serializer.toJson<String?>(strMealAlternate),
      'str_category': serializer.toJson<String?>(strCategory),
      'str_area': serializer.toJson<String?>(strArea),
      'str_instructions': serializer.toJson<String?>(strInstructions),
      'str_meal_thumb': serializer.toJson<String?>(strMealThumb),
      'str_tags': serializer.toJson<String?>(strTags),
      'str_youtube': serializer.toJson<String?>(strYoutube),
      'str_ingredient1': serializer.toJson<String?>(strIngredient1),
      'str_ingredient2': serializer.toJson<String?>(strIngredient2),
      'str_ingredient3': serializer.toJson<String?>(strIngredient3),
      'str_ingredient4': serializer.toJson<String?>(strIngredient4),
      'str_ingredient5': serializer.toJson<String?>(strIngredient5),
      'str_ingredient6': serializer.toJson<String?>(strIngredient6),
      'str_ingredient7': serializer.toJson<String?>(strIngredient7),
      'str_ingredient8': serializer.toJson<String?>(strIngredient8),
      'str_ingredient9': serializer.toJson<String?>(strIngredient9),
      'str_ingredient10': serializer.toJson<String?>(strIngredient10),
      'str_ingredient11': serializer.toJson<String?>(strIngredient11),
      'str_ingredient12': serializer.toJson<String?>(strIngredient12),
      'str_ingredient13': serializer.toJson<String?>(strIngredient13),
      'str_ingredient14': serializer.toJson<String?>(strIngredient14),
      'str_ingredient15': serializer.toJson<String?>(strIngredient15),
      'str_ingredient16': serializer.toJson<String?>(strIngredient16),
      'str_ingredient17': serializer.toJson<String?>(strIngredient17),
      'str_ingredient18': serializer.toJson<String?>(strIngredient18),
      'str_ingredient19': serializer.toJson<String?>(strIngredient19),
      'str_ingredient20': serializer.toJson<String?>(strIngredient20),
      'str_measure1': serializer.toJson<String?>(strMeasure1),
      'str_measure2': serializer.toJson<String?>(strMeasure2),
      'str_measure3': serializer.toJson<String?>(strMeasure3),
      'str_measure4': serializer.toJson<String?>(strMeasure4),
      'str_measure5': serializer.toJson<String?>(strMeasure5),
      'str_measure6': serializer.toJson<String?>(strMeasure6),
      'str_measure7': serializer.toJson<String?>(strMeasure7),
      'str_measure8': serializer.toJson<String?>(strMeasure8),
      'str_measure9': serializer.toJson<String?>(strMeasure9),
      'str_measure10': serializer.toJson<String?>(strMeasure10),
      'str_measure11': serializer.toJson<String?>(strMeasure11),
      'str_measure12': serializer.toJson<String?>(strMeasure12),
      'str_measure13': serializer.toJson<String?>(strMeasure13),
      'str_measure14': serializer.toJson<String?>(strMeasure14),
      'str_measure15': serializer.toJson<String?>(strMeasure15),
      'str_measure16': serializer.toJson<String?>(strMeasure16),
      'str_measure17': serializer.toJson<String?>(strMeasure17),
      'str_measure18': serializer.toJson<String?>(strMeasure18),
      'str_measure19': serializer.toJson<String?>(strMeasure19),
      'str_measure20': serializer.toJson<String?>(strMeasure20),
      'str_source': serializer.toJson<String?>(strSource),
      'str_image_source': serializer.toJson<String?>(strImageSource),
      'str_creative_commons_confirmed': serializer.toJson<String?>(
        strCreativeCommonsConfirmed,
      ),
      'date_modified': serializer.toJson<String?>(dateModified),
    };
  }

  Meal copyWith({
    String? idMeal,
    Value<String?> strMeal = const Value.absent(),
    Value<String?> strMealAlternate = const Value.absent(),
    Value<String?> strCategory = const Value.absent(),
    Value<String?> strArea = const Value.absent(),
    Value<String?> strInstructions = const Value.absent(),
    Value<String?> strMealThumb = const Value.absent(),
    Value<String?> strTags = const Value.absent(),
    Value<String?> strYoutube = const Value.absent(),
    Value<String?> strIngredient1 = const Value.absent(),
    Value<String?> strIngredient2 = const Value.absent(),
    Value<String?> strIngredient3 = const Value.absent(),
    Value<String?> strIngredient4 = const Value.absent(),
    Value<String?> strIngredient5 = const Value.absent(),
    Value<String?> strIngredient6 = const Value.absent(),
    Value<String?> strIngredient7 = const Value.absent(),
    Value<String?> strIngredient8 = const Value.absent(),
    Value<String?> strIngredient9 = const Value.absent(),
    Value<String?> strIngredient10 = const Value.absent(),
    Value<String?> strIngredient11 = const Value.absent(),
    Value<String?> strIngredient12 = const Value.absent(),
    Value<String?> strIngredient13 = const Value.absent(),
    Value<String?> strIngredient14 = const Value.absent(),
    Value<String?> strIngredient15 = const Value.absent(),
    Value<String?> strIngredient16 = const Value.absent(),
    Value<String?> strIngredient17 = const Value.absent(),
    Value<String?> strIngredient18 = const Value.absent(),
    Value<String?> strIngredient19 = const Value.absent(),
    Value<String?> strIngredient20 = const Value.absent(),
    Value<String?> strMeasure1 = const Value.absent(),
    Value<String?> strMeasure2 = const Value.absent(),
    Value<String?> strMeasure3 = const Value.absent(),
    Value<String?> strMeasure4 = const Value.absent(),
    Value<String?> strMeasure5 = const Value.absent(),
    Value<String?> strMeasure6 = const Value.absent(),
    Value<String?> strMeasure7 = const Value.absent(),
    Value<String?> strMeasure8 = const Value.absent(),
    Value<String?> strMeasure9 = const Value.absent(),
    Value<String?> strMeasure10 = const Value.absent(),
    Value<String?> strMeasure11 = const Value.absent(),
    Value<String?> strMeasure12 = const Value.absent(),
    Value<String?> strMeasure13 = const Value.absent(),
    Value<String?> strMeasure14 = const Value.absent(),
    Value<String?> strMeasure15 = const Value.absent(),
    Value<String?> strMeasure16 = const Value.absent(),
    Value<String?> strMeasure17 = const Value.absent(),
    Value<String?> strMeasure18 = const Value.absent(),
    Value<String?> strMeasure19 = const Value.absent(),
    Value<String?> strMeasure20 = const Value.absent(),
    Value<String?> strSource = const Value.absent(),
    Value<String?> strImageSource = const Value.absent(),
    Value<String?> strCreativeCommonsConfirmed = const Value.absent(),
    Value<String?> dateModified = const Value.absent(),
  }) => Meal(
    idMeal: idMeal ?? this.idMeal,
    strMeal: strMeal.present ? strMeal.value : this.strMeal,
    strMealAlternate: strMealAlternate.present
        ? strMealAlternate.value
        : this.strMealAlternate,
    strCategory: strCategory.present ? strCategory.value : this.strCategory,
    strArea: strArea.present ? strArea.value : this.strArea,
    strInstructions: strInstructions.present
        ? strInstructions.value
        : this.strInstructions,
    strMealThumb: strMealThumb.present ? strMealThumb.value : this.strMealThumb,
    strTags: strTags.present ? strTags.value : this.strTags,
    strYoutube: strYoutube.present ? strYoutube.value : this.strYoutube,
    strIngredient1: strIngredient1.present
        ? strIngredient1.value
        : this.strIngredient1,
    strIngredient2: strIngredient2.present
        ? strIngredient2.value
        : this.strIngredient2,
    strIngredient3: strIngredient3.present
        ? strIngredient3.value
        : this.strIngredient3,
    strIngredient4: strIngredient4.present
        ? strIngredient4.value
        : this.strIngredient4,
    strIngredient5: strIngredient5.present
        ? strIngredient5.value
        : this.strIngredient5,
    strIngredient6: strIngredient6.present
        ? strIngredient6.value
        : this.strIngredient6,
    strIngredient7: strIngredient7.present
        ? strIngredient7.value
        : this.strIngredient7,
    strIngredient8: strIngredient8.present
        ? strIngredient8.value
        : this.strIngredient8,
    strIngredient9: strIngredient9.present
        ? strIngredient9.value
        : this.strIngredient9,
    strIngredient10: strIngredient10.present
        ? strIngredient10.value
        : this.strIngredient10,
    strIngredient11: strIngredient11.present
        ? strIngredient11.value
        : this.strIngredient11,
    strIngredient12: strIngredient12.present
        ? strIngredient12.value
        : this.strIngredient12,
    strIngredient13: strIngredient13.present
        ? strIngredient13.value
        : this.strIngredient13,
    strIngredient14: strIngredient14.present
        ? strIngredient14.value
        : this.strIngredient14,
    strIngredient15: strIngredient15.present
        ? strIngredient15.value
        : this.strIngredient15,
    strIngredient16: strIngredient16.present
        ? strIngredient16.value
        : this.strIngredient16,
    strIngredient17: strIngredient17.present
        ? strIngredient17.value
        : this.strIngredient17,
    strIngredient18: strIngredient18.present
        ? strIngredient18.value
        : this.strIngredient18,
    strIngredient19: strIngredient19.present
        ? strIngredient19.value
        : this.strIngredient19,
    strIngredient20: strIngredient20.present
        ? strIngredient20.value
        : this.strIngredient20,
    strMeasure1: strMeasure1.present ? strMeasure1.value : this.strMeasure1,
    strMeasure2: strMeasure2.present ? strMeasure2.value : this.strMeasure2,
    strMeasure3: strMeasure3.present ? strMeasure3.value : this.strMeasure3,
    strMeasure4: strMeasure4.present ? strMeasure4.value : this.strMeasure4,
    strMeasure5: strMeasure5.present ? strMeasure5.value : this.strMeasure5,
    strMeasure6: strMeasure6.present ? strMeasure6.value : this.strMeasure6,
    strMeasure7: strMeasure7.present ? strMeasure7.value : this.strMeasure7,
    strMeasure8: strMeasure8.present ? strMeasure8.value : this.strMeasure8,
    strMeasure9: strMeasure9.present ? strMeasure9.value : this.strMeasure9,
    strMeasure10: strMeasure10.present ? strMeasure10.value : this.strMeasure10,
    strMeasure11: strMeasure11.present ? strMeasure11.value : this.strMeasure11,
    strMeasure12: strMeasure12.present ? strMeasure12.value : this.strMeasure12,
    strMeasure13: strMeasure13.present ? strMeasure13.value : this.strMeasure13,
    strMeasure14: strMeasure14.present ? strMeasure14.value : this.strMeasure14,
    strMeasure15: strMeasure15.present ? strMeasure15.value : this.strMeasure15,
    strMeasure16: strMeasure16.present ? strMeasure16.value : this.strMeasure16,
    strMeasure17: strMeasure17.present ? strMeasure17.value : this.strMeasure17,
    strMeasure18: strMeasure18.present ? strMeasure18.value : this.strMeasure18,
    strMeasure19: strMeasure19.present ? strMeasure19.value : this.strMeasure19,
    strMeasure20: strMeasure20.present ? strMeasure20.value : this.strMeasure20,
    strSource: strSource.present ? strSource.value : this.strSource,
    strImageSource: strImageSource.present
        ? strImageSource.value
        : this.strImageSource,
    strCreativeCommonsConfirmed: strCreativeCommonsConfirmed.present
        ? strCreativeCommonsConfirmed.value
        : this.strCreativeCommonsConfirmed,
    dateModified: dateModified.present ? dateModified.value : this.dateModified,
  );
  Meal copyWithCompanion(MealsCompanion data) {
    return Meal(
      idMeal: data.idMeal.present ? data.idMeal.value : this.idMeal,
      strMeal: data.strMeal.present ? data.strMeal.value : this.strMeal,
      strMealAlternate: data.strMealAlternate.present
          ? data.strMealAlternate.value
          : this.strMealAlternate,
      strCategory: data.strCategory.present
          ? data.strCategory.value
          : this.strCategory,
      strArea: data.strArea.present ? data.strArea.value : this.strArea,
      strInstructions: data.strInstructions.present
          ? data.strInstructions.value
          : this.strInstructions,
      strMealThumb: data.strMealThumb.present
          ? data.strMealThumb.value
          : this.strMealThumb,
      strTags: data.strTags.present ? data.strTags.value : this.strTags,
      strYoutube: data.strYoutube.present
          ? data.strYoutube.value
          : this.strYoutube,
      strIngredient1: data.strIngredient1.present
          ? data.strIngredient1.value
          : this.strIngredient1,
      strIngredient2: data.strIngredient2.present
          ? data.strIngredient2.value
          : this.strIngredient2,
      strIngredient3: data.strIngredient3.present
          ? data.strIngredient3.value
          : this.strIngredient3,
      strIngredient4: data.strIngredient4.present
          ? data.strIngredient4.value
          : this.strIngredient4,
      strIngredient5: data.strIngredient5.present
          ? data.strIngredient5.value
          : this.strIngredient5,
      strIngredient6: data.strIngredient6.present
          ? data.strIngredient6.value
          : this.strIngredient6,
      strIngredient7: data.strIngredient7.present
          ? data.strIngredient7.value
          : this.strIngredient7,
      strIngredient8: data.strIngredient8.present
          ? data.strIngredient8.value
          : this.strIngredient8,
      strIngredient9: data.strIngredient9.present
          ? data.strIngredient9.value
          : this.strIngredient9,
      strIngredient10: data.strIngredient10.present
          ? data.strIngredient10.value
          : this.strIngredient10,
      strIngredient11: data.strIngredient11.present
          ? data.strIngredient11.value
          : this.strIngredient11,
      strIngredient12: data.strIngredient12.present
          ? data.strIngredient12.value
          : this.strIngredient12,
      strIngredient13: data.strIngredient13.present
          ? data.strIngredient13.value
          : this.strIngredient13,
      strIngredient14: data.strIngredient14.present
          ? data.strIngredient14.value
          : this.strIngredient14,
      strIngredient15: data.strIngredient15.present
          ? data.strIngredient15.value
          : this.strIngredient15,
      strIngredient16: data.strIngredient16.present
          ? data.strIngredient16.value
          : this.strIngredient16,
      strIngredient17: data.strIngredient17.present
          ? data.strIngredient17.value
          : this.strIngredient17,
      strIngredient18: data.strIngredient18.present
          ? data.strIngredient18.value
          : this.strIngredient18,
      strIngredient19: data.strIngredient19.present
          ? data.strIngredient19.value
          : this.strIngredient19,
      strIngredient20: data.strIngredient20.present
          ? data.strIngredient20.value
          : this.strIngredient20,
      strMeasure1: data.strMeasure1.present
          ? data.strMeasure1.value
          : this.strMeasure1,
      strMeasure2: data.strMeasure2.present
          ? data.strMeasure2.value
          : this.strMeasure2,
      strMeasure3: data.strMeasure3.present
          ? data.strMeasure3.value
          : this.strMeasure3,
      strMeasure4: data.strMeasure4.present
          ? data.strMeasure4.value
          : this.strMeasure4,
      strMeasure5: data.strMeasure5.present
          ? data.strMeasure5.value
          : this.strMeasure5,
      strMeasure6: data.strMeasure6.present
          ? data.strMeasure6.value
          : this.strMeasure6,
      strMeasure7: data.strMeasure7.present
          ? data.strMeasure7.value
          : this.strMeasure7,
      strMeasure8: data.strMeasure8.present
          ? data.strMeasure8.value
          : this.strMeasure8,
      strMeasure9: data.strMeasure9.present
          ? data.strMeasure9.value
          : this.strMeasure9,
      strMeasure10: data.strMeasure10.present
          ? data.strMeasure10.value
          : this.strMeasure10,
      strMeasure11: data.strMeasure11.present
          ? data.strMeasure11.value
          : this.strMeasure11,
      strMeasure12: data.strMeasure12.present
          ? data.strMeasure12.value
          : this.strMeasure12,
      strMeasure13: data.strMeasure13.present
          ? data.strMeasure13.value
          : this.strMeasure13,
      strMeasure14: data.strMeasure14.present
          ? data.strMeasure14.value
          : this.strMeasure14,
      strMeasure15: data.strMeasure15.present
          ? data.strMeasure15.value
          : this.strMeasure15,
      strMeasure16: data.strMeasure16.present
          ? data.strMeasure16.value
          : this.strMeasure16,
      strMeasure17: data.strMeasure17.present
          ? data.strMeasure17.value
          : this.strMeasure17,
      strMeasure18: data.strMeasure18.present
          ? data.strMeasure18.value
          : this.strMeasure18,
      strMeasure19: data.strMeasure19.present
          ? data.strMeasure19.value
          : this.strMeasure19,
      strMeasure20: data.strMeasure20.present
          ? data.strMeasure20.value
          : this.strMeasure20,
      strSource: data.strSource.present ? data.strSource.value : this.strSource,
      strImageSource: data.strImageSource.present
          ? data.strImageSource.value
          : this.strImageSource,
      strCreativeCommonsConfirmed: data.strCreativeCommonsConfirmed.present
          ? data.strCreativeCommonsConfirmed.value
          : this.strCreativeCommonsConfirmed,
      dateModified: data.dateModified.present
          ? data.dateModified.value
          : this.dateModified,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Meal(')
          ..write('idMeal: $idMeal, ')
          ..write('strMeal: $strMeal, ')
          ..write('strMealAlternate: $strMealAlternate, ')
          ..write('strCategory: $strCategory, ')
          ..write('strArea: $strArea, ')
          ..write('strInstructions: $strInstructions, ')
          ..write('strMealThumb: $strMealThumb, ')
          ..write('strTags: $strTags, ')
          ..write('strYoutube: $strYoutube, ')
          ..write('strIngredient1: $strIngredient1, ')
          ..write('strIngredient2: $strIngredient2, ')
          ..write('strIngredient3: $strIngredient3, ')
          ..write('strIngredient4: $strIngredient4, ')
          ..write('strIngredient5: $strIngredient5, ')
          ..write('strIngredient6: $strIngredient6, ')
          ..write('strIngredient7: $strIngredient7, ')
          ..write('strIngredient8: $strIngredient8, ')
          ..write('strIngredient9: $strIngredient9, ')
          ..write('strIngredient10: $strIngredient10, ')
          ..write('strIngredient11: $strIngredient11, ')
          ..write('strIngredient12: $strIngredient12, ')
          ..write('strIngredient13: $strIngredient13, ')
          ..write('strIngredient14: $strIngredient14, ')
          ..write('strIngredient15: $strIngredient15, ')
          ..write('strIngredient16: $strIngredient16, ')
          ..write('strIngredient17: $strIngredient17, ')
          ..write('strIngredient18: $strIngredient18, ')
          ..write('strIngredient19: $strIngredient19, ')
          ..write('strIngredient20: $strIngredient20, ')
          ..write('strMeasure1: $strMeasure1, ')
          ..write('strMeasure2: $strMeasure2, ')
          ..write('strMeasure3: $strMeasure3, ')
          ..write('strMeasure4: $strMeasure4, ')
          ..write('strMeasure5: $strMeasure5, ')
          ..write('strMeasure6: $strMeasure6, ')
          ..write('strMeasure7: $strMeasure7, ')
          ..write('strMeasure8: $strMeasure8, ')
          ..write('strMeasure9: $strMeasure9, ')
          ..write('strMeasure10: $strMeasure10, ')
          ..write('strMeasure11: $strMeasure11, ')
          ..write('strMeasure12: $strMeasure12, ')
          ..write('strMeasure13: $strMeasure13, ')
          ..write('strMeasure14: $strMeasure14, ')
          ..write('strMeasure15: $strMeasure15, ')
          ..write('strMeasure16: $strMeasure16, ')
          ..write('strMeasure17: $strMeasure17, ')
          ..write('strMeasure18: $strMeasure18, ')
          ..write('strMeasure19: $strMeasure19, ')
          ..write('strMeasure20: $strMeasure20, ')
          ..write('strSource: $strSource, ')
          ..write('strImageSource: $strImageSource, ')
          ..write('strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, ')
          ..write('dateModified: $dateModified')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    idMeal,
    strMeal,
    strMealAlternate,
    strCategory,
    strArea,
    strInstructions,
    strMealThumb,
    strTags,
    strYoutube,
    strIngredient1,
    strIngredient2,
    strIngredient3,
    strIngredient4,
    strIngredient5,
    strIngredient6,
    strIngredient7,
    strIngredient8,
    strIngredient9,
    strIngredient10,
    strIngredient11,
    strIngredient12,
    strIngredient13,
    strIngredient14,
    strIngredient15,
    strIngredient16,
    strIngredient17,
    strIngredient18,
    strIngredient19,
    strIngredient20,
    strMeasure1,
    strMeasure2,
    strMeasure3,
    strMeasure4,
    strMeasure5,
    strMeasure6,
    strMeasure7,
    strMeasure8,
    strMeasure9,
    strMeasure10,
    strMeasure11,
    strMeasure12,
    strMeasure13,
    strMeasure14,
    strMeasure15,
    strMeasure16,
    strMeasure17,
    strMeasure18,
    strMeasure19,
    strMeasure20,
    strSource,
    strImageSource,
    strCreativeCommonsConfirmed,
    dateModified,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Meal &&
          other.idMeal == this.idMeal &&
          other.strMeal == this.strMeal &&
          other.strMealAlternate == this.strMealAlternate &&
          other.strCategory == this.strCategory &&
          other.strArea == this.strArea &&
          other.strInstructions == this.strInstructions &&
          other.strMealThumb == this.strMealThumb &&
          other.strTags == this.strTags &&
          other.strYoutube == this.strYoutube &&
          other.strIngredient1 == this.strIngredient1 &&
          other.strIngredient2 == this.strIngredient2 &&
          other.strIngredient3 == this.strIngredient3 &&
          other.strIngredient4 == this.strIngredient4 &&
          other.strIngredient5 == this.strIngredient5 &&
          other.strIngredient6 == this.strIngredient6 &&
          other.strIngredient7 == this.strIngredient7 &&
          other.strIngredient8 == this.strIngredient8 &&
          other.strIngredient9 == this.strIngredient9 &&
          other.strIngredient10 == this.strIngredient10 &&
          other.strIngredient11 == this.strIngredient11 &&
          other.strIngredient12 == this.strIngredient12 &&
          other.strIngredient13 == this.strIngredient13 &&
          other.strIngredient14 == this.strIngredient14 &&
          other.strIngredient15 == this.strIngredient15 &&
          other.strIngredient16 == this.strIngredient16 &&
          other.strIngredient17 == this.strIngredient17 &&
          other.strIngredient18 == this.strIngredient18 &&
          other.strIngredient19 == this.strIngredient19 &&
          other.strIngredient20 == this.strIngredient20 &&
          other.strMeasure1 == this.strMeasure1 &&
          other.strMeasure2 == this.strMeasure2 &&
          other.strMeasure3 == this.strMeasure3 &&
          other.strMeasure4 == this.strMeasure4 &&
          other.strMeasure5 == this.strMeasure5 &&
          other.strMeasure6 == this.strMeasure6 &&
          other.strMeasure7 == this.strMeasure7 &&
          other.strMeasure8 == this.strMeasure8 &&
          other.strMeasure9 == this.strMeasure9 &&
          other.strMeasure10 == this.strMeasure10 &&
          other.strMeasure11 == this.strMeasure11 &&
          other.strMeasure12 == this.strMeasure12 &&
          other.strMeasure13 == this.strMeasure13 &&
          other.strMeasure14 == this.strMeasure14 &&
          other.strMeasure15 == this.strMeasure15 &&
          other.strMeasure16 == this.strMeasure16 &&
          other.strMeasure17 == this.strMeasure17 &&
          other.strMeasure18 == this.strMeasure18 &&
          other.strMeasure19 == this.strMeasure19 &&
          other.strMeasure20 == this.strMeasure20 &&
          other.strSource == this.strSource &&
          other.strImageSource == this.strImageSource &&
          other.strCreativeCommonsConfirmed ==
              this.strCreativeCommonsConfirmed &&
          other.dateModified == this.dateModified);
}

class MealsCompanion extends UpdateCompanion<Meal> {
  final Value<String> idMeal;
  final Value<String?> strMeal;
  final Value<String?> strMealAlternate;
  final Value<String?> strCategory;
  final Value<String?> strArea;
  final Value<String?> strInstructions;
  final Value<String?> strMealThumb;
  final Value<String?> strTags;
  final Value<String?> strYoutube;
  final Value<String?> strIngredient1;
  final Value<String?> strIngredient2;
  final Value<String?> strIngredient3;
  final Value<String?> strIngredient4;
  final Value<String?> strIngredient5;
  final Value<String?> strIngredient6;
  final Value<String?> strIngredient7;
  final Value<String?> strIngredient8;
  final Value<String?> strIngredient9;
  final Value<String?> strIngredient10;
  final Value<String?> strIngredient11;
  final Value<String?> strIngredient12;
  final Value<String?> strIngredient13;
  final Value<String?> strIngredient14;
  final Value<String?> strIngredient15;
  final Value<String?> strIngredient16;
  final Value<String?> strIngredient17;
  final Value<String?> strIngredient18;
  final Value<String?> strIngredient19;
  final Value<String?> strIngredient20;
  final Value<String?> strMeasure1;
  final Value<String?> strMeasure2;
  final Value<String?> strMeasure3;
  final Value<String?> strMeasure4;
  final Value<String?> strMeasure5;
  final Value<String?> strMeasure6;
  final Value<String?> strMeasure7;
  final Value<String?> strMeasure8;
  final Value<String?> strMeasure9;
  final Value<String?> strMeasure10;
  final Value<String?> strMeasure11;
  final Value<String?> strMeasure12;
  final Value<String?> strMeasure13;
  final Value<String?> strMeasure14;
  final Value<String?> strMeasure15;
  final Value<String?> strMeasure16;
  final Value<String?> strMeasure17;
  final Value<String?> strMeasure18;
  final Value<String?> strMeasure19;
  final Value<String?> strMeasure20;
  final Value<String?> strSource;
  final Value<String?> strImageSource;
  final Value<String?> strCreativeCommonsConfirmed;
  final Value<String?> dateModified;
  final Value<int> rowid;
  const MealsCompanion({
    this.idMeal = const Value.absent(),
    this.strMeal = const Value.absent(),
    this.strMealAlternate = const Value.absent(),
    this.strCategory = const Value.absent(),
    this.strArea = const Value.absent(),
    this.strInstructions = const Value.absent(),
    this.strMealThumb = const Value.absent(),
    this.strTags = const Value.absent(),
    this.strYoutube = const Value.absent(),
    this.strIngredient1 = const Value.absent(),
    this.strIngredient2 = const Value.absent(),
    this.strIngredient3 = const Value.absent(),
    this.strIngredient4 = const Value.absent(),
    this.strIngredient5 = const Value.absent(),
    this.strIngredient6 = const Value.absent(),
    this.strIngredient7 = const Value.absent(),
    this.strIngredient8 = const Value.absent(),
    this.strIngredient9 = const Value.absent(),
    this.strIngredient10 = const Value.absent(),
    this.strIngredient11 = const Value.absent(),
    this.strIngredient12 = const Value.absent(),
    this.strIngredient13 = const Value.absent(),
    this.strIngredient14 = const Value.absent(),
    this.strIngredient15 = const Value.absent(),
    this.strIngredient16 = const Value.absent(),
    this.strIngredient17 = const Value.absent(),
    this.strIngredient18 = const Value.absent(),
    this.strIngredient19 = const Value.absent(),
    this.strIngredient20 = const Value.absent(),
    this.strMeasure1 = const Value.absent(),
    this.strMeasure2 = const Value.absent(),
    this.strMeasure3 = const Value.absent(),
    this.strMeasure4 = const Value.absent(),
    this.strMeasure5 = const Value.absent(),
    this.strMeasure6 = const Value.absent(),
    this.strMeasure7 = const Value.absent(),
    this.strMeasure8 = const Value.absent(),
    this.strMeasure9 = const Value.absent(),
    this.strMeasure10 = const Value.absent(),
    this.strMeasure11 = const Value.absent(),
    this.strMeasure12 = const Value.absent(),
    this.strMeasure13 = const Value.absent(),
    this.strMeasure14 = const Value.absent(),
    this.strMeasure15 = const Value.absent(),
    this.strMeasure16 = const Value.absent(),
    this.strMeasure17 = const Value.absent(),
    this.strMeasure18 = const Value.absent(),
    this.strMeasure19 = const Value.absent(),
    this.strMeasure20 = const Value.absent(),
    this.strSource = const Value.absent(),
    this.strImageSource = const Value.absent(),
    this.strCreativeCommonsConfirmed = const Value.absent(),
    this.dateModified = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MealsCompanion.insert({
    required String idMeal,
    this.strMeal = const Value.absent(),
    this.strMealAlternate = const Value.absent(),
    this.strCategory = const Value.absent(),
    this.strArea = const Value.absent(),
    this.strInstructions = const Value.absent(),
    this.strMealThumb = const Value.absent(),
    this.strTags = const Value.absent(),
    this.strYoutube = const Value.absent(),
    this.strIngredient1 = const Value.absent(),
    this.strIngredient2 = const Value.absent(),
    this.strIngredient3 = const Value.absent(),
    this.strIngredient4 = const Value.absent(),
    this.strIngredient5 = const Value.absent(),
    this.strIngredient6 = const Value.absent(),
    this.strIngredient7 = const Value.absent(),
    this.strIngredient8 = const Value.absent(),
    this.strIngredient9 = const Value.absent(),
    this.strIngredient10 = const Value.absent(),
    this.strIngredient11 = const Value.absent(),
    this.strIngredient12 = const Value.absent(),
    this.strIngredient13 = const Value.absent(),
    this.strIngredient14 = const Value.absent(),
    this.strIngredient15 = const Value.absent(),
    this.strIngredient16 = const Value.absent(),
    this.strIngredient17 = const Value.absent(),
    this.strIngredient18 = const Value.absent(),
    this.strIngredient19 = const Value.absent(),
    this.strIngredient20 = const Value.absent(),
    this.strMeasure1 = const Value.absent(),
    this.strMeasure2 = const Value.absent(),
    this.strMeasure3 = const Value.absent(),
    this.strMeasure4 = const Value.absent(),
    this.strMeasure5 = const Value.absent(),
    this.strMeasure6 = const Value.absent(),
    this.strMeasure7 = const Value.absent(),
    this.strMeasure8 = const Value.absent(),
    this.strMeasure9 = const Value.absent(),
    this.strMeasure10 = const Value.absent(),
    this.strMeasure11 = const Value.absent(),
    this.strMeasure12 = const Value.absent(),
    this.strMeasure13 = const Value.absent(),
    this.strMeasure14 = const Value.absent(),
    this.strMeasure15 = const Value.absent(),
    this.strMeasure16 = const Value.absent(),
    this.strMeasure17 = const Value.absent(),
    this.strMeasure18 = const Value.absent(),
    this.strMeasure19 = const Value.absent(),
    this.strMeasure20 = const Value.absent(),
    this.strSource = const Value.absent(),
    this.strImageSource = const Value.absent(),
    this.strCreativeCommonsConfirmed = const Value.absent(),
    this.dateModified = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : idMeal = Value(idMeal);
  static Insertable<Meal> custom({
    Expression<String>? idMeal,
    Expression<String>? strMeal,
    Expression<String>? strMealAlternate,
    Expression<String>? strCategory,
    Expression<String>? strArea,
    Expression<String>? strInstructions,
    Expression<String>? strMealThumb,
    Expression<String>? strTags,
    Expression<String>? strYoutube,
    Expression<String>? strIngredient1,
    Expression<String>? strIngredient2,
    Expression<String>? strIngredient3,
    Expression<String>? strIngredient4,
    Expression<String>? strIngredient5,
    Expression<String>? strIngredient6,
    Expression<String>? strIngredient7,
    Expression<String>? strIngredient8,
    Expression<String>? strIngredient9,
    Expression<String>? strIngredient10,
    Expression<String>? strIngredient11,
    Expression<String>? strIngredient12,
    Expression<String>? strIngredient13,
    Expression<String>? strIngredient14,
    Expression<String>? strIngredient15,
    Expression<String>? strIngredient16,
    Expression<String>? strIngredient17,
    Expression<String>? strIngredient18,
    Expression<String>? strIngredient19,
    Expression<String>? strIngredient20,
    Expression<String>? strMeasure1,
    Expression<String>? strMeasure2,
    Expression<String>? strMeasure3,
    Expression<String>? strMeasure4,
    Expression<String>? strMeasure5,
    Expression<String>? strMeasure6,
    Expression<String>? strMeasure7,
    Expression<String>? strMeasure8,
    Expression<String>? strMeasure9,
    Expression<String>? strMeasure10,
    Expression<String>? strMeasure11,
    Expression<String>? strMeasure12,
    Expression<String>? strMeasure13,
    Expression<String>? strMeasure14,
    Expression<String>? strMeasure15,
    Expression<String>? strMeasure16,
    Expression<String>? strMeasure17,
    Expression<String>? strMeasure18,
    Expression<String>? strMeasure19,
    Expression<String>? strMeasure20,
    Expression<String>? strSource,
    Expression<String>? strImageSource,
    Expression<String>? strCreativeCommonsConfirmed,
    Expression<String>? dateModified,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idMeal != null) 'id_meal': idMeal,
      if (strMeal != null) 'str_meal': strMeal,
      if (strMealAlternate != null) 'str_meal_alternate': strMealAlternate,
      if (strCategory != null) 'str_category': strCategory,
      if (strArea != null) 'str_area': strArea,
      if (strInstructions != null) 'str_instructions': strInstructions,
      if (strMealThumb != null) 'str_meal_thumb': strMealThumb,
      if (strTags != null) 'str_tags': strTags,
      if (strYoutube != null) 'str_youtube': strYoutube,
      if (strIngredient1 != null) 'str_ingredient1': strIngredient1,
      if (strIngredient2 != null) 'str_ingredient2': strIngredient2,
      if (strIngredient3 != null) 'str_ingredient3': strIngredient3,
      if (strIngredient4 != null) 'str_ingredient4': strIngredient4,
      if (strIngredient5 != null) 'str_ingredient5': strIngredient5,
      if (strIngredient6 != null) 'str_ingredient6': strIngredient6,
      if (strIngredient7 != null) 'str_ingredient7': strIngredient7,
      if (strIngredient8 != null) 'str_ingredient8': strIngredient8,
      if (strIngredient9 != null) 'str_ingredient9': strIngredient9,
      if (strIngredient10 != null) 'str_ingredient10': strIngredient10,
      if (strIngredient11 != null) 'str_ingredient11': strIngredient11,
      if (strIngredient12 != null) 'str_ingredient12': strIngredient12,
      if (strIngredient13 != null) 'str_ingredient13': strIngredient13,
      if (strIngredient14 != null) 'str_ingredient14': strIngredient14,
      if (strIngredient15 != null) 'str_ingredient15': strIngredient15,
      if (strIngredient16 != null) 'str_ingredient16': strIngredient16,
      if (strIngredient17 != null) 'str_ingredient17': strIngredient17,
      if (strIngredient18 != null) 'str_ingredient18': strIngredient18,
      if (strIngredient19 != null) 'str_ingredient19': strIngredient19,
      if (strIngredient20 != null) 'str_ingredient20': strIngredient20,
      if (strMeasure1 != null) 'str_measure1': strMeasure1,
      if (strMeasure2 != null) 'str_measure2': strMeasure2,
      if (strMeasure3 != null) 'str_measure3': strMeasure3,
      if (strMeasure4 != null) 'str_measure4': strMeasure4,
      if (strMeasure5 != null) 'str_measure5': strMeasure5,
      if (strMeasure6 != null) 'str_measure6': strMeasure6,
      if (strMeasure7 != null) 'str_measure7': strMeasure7,
      if (strMeasure8 != null) 'str_measure8': strMeasure8,
      if (strMeasure9 != null) 'str_measure9': strMeasure9,
      if (strMeasure10 != null) 'str_measure10': strMeasure10,
      if (strMeasure11 != null) 'str_measure11': strMeasure11,
      if (strMeasure12 != null) 'str_measure12': strMeasure12,
      if (strMeasure13 != null) 'str_measure13': strMeasure13,
      if (strMeasure14 != null) 'str_measure14': strMeasure14,
      if (strMeasure15 != null) 'str_measure15': strMeasure15,
      if (strMeasure16 != null) 'str_measure16': strMeasure16,
      if (strMeasure17 != null) 'str_measure17': strMeasure17,
      if (strMeasure18 != null) 'str_measure18': strMeasure18,
      if (strMeasure19 != null) 'str_measure19': strMeasure19,
      if (strMeasure20 != null) 'str_measure20': strMeasure20,
      if (strSource != null) 'str_source': strSource,
      if (strImageSource != null) 'str_image_source': strImageSource,
      if (strCreativeCommonsConfirmed != null)
        'str_creative_commons_confirmed': strCreativeCommonsConfirmed,
      if (dateModified != null) 'date_modified': dateModified,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MealsCompanion copyWith({
    Value<String>? idMeal,
    Value<String?>? strMeal,
    Value<String?>? strMealAlternate,
    Value<String?>? strCategory,
    Value<String?>? strArea,
    Value<String?>? strInstructions,
    Value<String?>? strMealThumb,
    Value<String?>? strTags,
    Value<String?>? strYoutube,
    Value<String?>? strIngredient1,
    Value<String?>? strIngredient2,
    Value<String?>? strIngredient3,
    Value<String?>? strIngredient4,
    Value<String?>? strIngredient5,
    Value<String?>? strIngredient6,
    Value<String?>? strIngredient7,
    Value<String?>? strIngredient8,
    Value<String?>? strIngredient9,
    Value<String?>? strIngredient10,
    Value<String?>? strIngredient11,
    Value<String?>? strIngredient12,
    Value<String?>? strIngredient13,
    Value<String?>? strIngredient14,
    Value<String?>? strIngredient15,
    Value<String?>? strIngredient16,
    Value<String?>? strIngredient17,
    Value<String?>? strIngredient18,
    Value<String?>? strIngredient19,
    Value<String?>? strIngredient20,
    Value<String?>? strMeasure1,
    Value<String?>? strMeasure2,
    Value<String?>? strMeasure3,
    Value<String?>? strMeasure4,
    Value<String?>? strMeasure5,
    Value<String?>? strMeasure6,
    Value<String?>? strMeasure7,
    Value<String?>? strMeasure8,
    Value<String?>? strMeasure9,
    Value<String?>? strMeasure10,
    Value<String?>? strMeasure11,
    Value<String?>? strMeasure12,
    Value<String?>? strMeasure13,
    Value<String?>? strMeasure14,
    Value<String?>? strMeasure15,
    Value<String?>? strMeasure16,
    Value<String?>? strMeasure17,
    Value<String?>? strMeasure18,
    Value<String?>? strMeasure19,
    Value<String?>? strMeasure20,
    Value<String?>? strSource,
    Value<String?>? strImageSource,
    Value<String?>? strCreativeCommonsConfirmed,
    Value<String?>? dateModified,
    Value<int>? rowid,
  }) {
    return MealsCompanion(
      idMeal: idMeal ?? this.idMeal,
      strMeal: strMeal ?? this.strMeal,
      strMealAlternate: strMealAlternate ?? this.strMealAlternate,
      strCategory: strCategory ?? this.strCategory,
      strArea: strArea ?? this.strArea,
      strInstructions: strInstructions ?? this.strInstructions,
      strMealThumb: strMealThumb ?? this.strMealThumb,
      strTags: strTags ?? this.strTags,
      strYoutube: strYoutube ?? this.strYoutube,
      strIngredient1: strIngredient1 ?? this.strIngredient1,
      strIngredient2: strIngredient2 ?? this.strIngredient2,
      strIngredient3: strIngredient3 ?? this.strIngredient3,
      strIngredient4: strIngredient4 ?? this.strIngredient4,
      strIngredient5: strIngredient5 ?? this.strIngredient5,
      strIngredient6: strIngredient6 ?? this.strIngredient6,
      strIngredient7: strIngredient7 ?? this.strIngredient7,
      strIngredient8: strIngredient8 ?? this.strIngredient8,
      strIngredient9: strIngredient9 ?? this.strIngredient9,
      strIngredient10: strIngredient10 ?? this.strIngredient10,
      strIngredient11: strIngredient11 ?? this.strIngredient11,
      strIngredient12: strIngredient12 ?? this.strIngredient12,
      strIngredient13: strIngredient13 ?? this.strIngredient13,
      strIngredient14: strIngredient14 ?? this.strIngredient14,
      strIngredient15: strIngredient15 ?? this.strIngredient15,
      strIngredient16: strIngredient16 ?? this.strIngredient16,
      strIngredient17: strIngredient17 ?? this.strIngredient17,
      strIngredient18: strIngredient18 ?? this.strIngredient18,
      strIngredient19: strIngredient19 ?? this.strIngredient19,
      strIngredient20: strIngredient20 ?? this.strIngredient20,
      strMeasure1: strMeasure1 ?? this.strMeasure1,
      strMeasure2: strMeasure2 ?? this.strMeasure2,
      strMeasure3: strMeasure3 ?? this.strMeasure3,
      strMeasure4: strMeasure4 ?? this.strMeasure4,
      strMeasure5: strMeasure5 ?? this.strMeasure5,
      strMeasure6: strMeasure6 ?? this.strMeasure6,
      strMeasure7: strMeasure7 ?? this.strMeasure7,
      strMeasure8: strMeasure8 ?? this.strMeasure8,
      strMeasure9: strMeasure9 ?? this.strMeasure9,
      strMeasure10: strMeasure10 ?? this.strMeasure10,
      strMeasure11: strMeasure11 ?? this.strMeasure11,
      strMeasure12: strMeasure12 ?? this.strMeasure12,
      strMeasure13: strMeasure13 ?? this.strMeasure13,
      strMeasure14: strMeasure14 ?? this.strMeasure14,
      strMeasure15: strMeasure15 ?? this.strMeasure15,
      strMeasure16: strMeasure16 ?? this.strMeasure16,
      strMeasure17: strMeasure17 ?? this.strMeasure17,
      strMeasure18: strMeasure18 ?? this.strMeasure18,
      strMeasure19: strMeasure19 ?? this.strMeasure19,
      strMeasure20: strMeasure20 ?? this.strMeasure20,
      strSource: strSource ?? this.strSource,
      strImageSource: strImageSource ?? this.strImageSource,
      strCreativeCommonsConfirmed:
          strCreativeCommonsConfirmed ?? this.strCreativeCommonsConfirmed,
      dateModified: dateModified ?? this.dateModified,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idMeal.present) {
      map['id_meal'] = Variable<String>(idMeal.value);
    }
    if (strMeal.present) {
      map['str_meal'] = Variable<String>(strMeal.value);
    }
    if (strMealAlternate.present) {
      map['str_meal_alternate'] = Variable<String>(strMealAlternate.value);
    }
    if (strCategory.present) {
      map['str_category'] = Variable<String>(strCategory.value);
    }
    if (strArea.present) {
      map['str_area'] = Variable<String>(strArea.value);
    }
    if (strInstructions.present) {
      map['str_instructions'] = Variable<String>(strInstructions.value);
    }
    if (strMealThumb.present) {
      map['str_meal_thumb'] = Variable<String>(strMealThumb.value);
    }
    if (strTags.present) {
      map['str_tags'] = Variable<String>(strTags.value);
    }
    if (strYoutube.present) {
      map['str_youtube'] = Variable<String>(strYoutube.value);
    }
    if (strIngredient1.present) {
      map['str_ingredient1'] = Variable<String>(strIngredient1.value);
    }
    if (strIngredient2.present) {
      map['str_ingredient2'] = Variable<String>(strIngredient2.value);
    }
    if (strIngredient3.present) {
      map['str_ingredient3'] = Variable<String>(strIngredient3.value);
    }
    if (strIngredient4.present) {
      map['str_ingredient4'] = Variable<String>(strIngredient4.value);
    }
    if (strIngredient5.present) {
      map['str_ingredient5'] = Variable<String>(strIngredient5.value);
    }
    if (strIngredient6.present) {
      map['str_ingredient6'] = Variable<String>(strIngredient6.value);
    }
    if (strIngredient7.present) {
      map['str_ingredient7'] = Variable<String>(strIngredient7.value);
    }
    if (strIngredient8.present) {
      map['str_ingredient8'] = Variable<String>(strIngredient8.value);
    }
    if (strIngredient9.present) {
      map['str_ingredient9'] = Variable<String>(strIngredient9.value);
    }
    if (strIngredient10.present) {
      map['str_ingredient10'] = Variable<String>(strIngredient10.value);
    }
    if (strIngredient11.present) {
      map['str_ingredient11'] = Variable<String>(strIngredient11.value);
    }
    if (strIngredient12.present) {
      map['str_ingredient12'] = Variable<String>(strIngredient12.value);
    }
    if (strIngredient13.present) {
      map['str_ingredient13'] = Variable<String>(strIngredient13.value);
    }
    if (strIngredient14.present) {
      map['str_ingredient14'] = Variable<String>(strIngredient14.value);
    }
    if (strIngredient15.present) {
      map['str_ingredient15'] = Variable<String>(strIngredient15.value);
    }
    if (strIngredient16.present) {
      map['str_ingredient16'] = Variable<String>(strIngredient16.value);
    }
    if (strIngredient17.present) {
      map['str_ingredient17'] = Variable<String>(strIngredient17.value);
    }
    if (strIngredient18.present) {
      map['str_ingredient18'] = Variable<String>(strIngredient18.value);
    }
    if (strIngredient19.present) {
      map['str_ingredient19'] = Variable<String>(strIngredient19.value);
    }
    if (strIngredient20.present) {
      map['str_ingredient20'] = Variable<String>(strIngredient20.value);
    }
    if (strMeasure1.present) {
      map['str_measure1'] = Variable<String>(strMeasure1.value);
    }
    if (strMeasure2.present) {
      map['str_measure2'] = Variable<String>(strMeasure2.value);
    }
    if (strMeasure3.present) {
      map['str_measure3'] = Variable<String>(strMeasure3.value);
    }
    if (strMeasure4.present) {
      map['str_measure4'] = Variable<String>(strMeasure4.value);
    }
    if (strMeasure5.present) {
      map['str_measure5'] = Variable<String>(strMeasure5.value);
    }
    if (strMeasure6.present) {
      map['str_measure6'] = Variable<String>(strMeasure6.value);
    }
    if (strMeasure7.present) {
      map['str_measure7'] = Variable<String>(strMeasure7.value);
    }
    if (strMeasure8.present) {
      map['str_measure8'] = Variable<String>(strMeasure8.value);
    }
    if (strMeasure9.present) {
      map['str_measure9'] = Variable<String>(strMeasure9.value);
    }
    if (strMeasure10.present) {
      map['str_measure10'] = Variable<String>(strMeasure10.value);
    }
    if (strMeasure11.present) {
      map['str_measure11'] = Variable<String>(strMeasure11.value);
    }
    if (strMeasure12.present) {
      map['str_measure12'] = Variable<String>(strMeasure12.value);
    }
    if (strMeasure13.present) {
      map['str_measure13'] = Variable<String>(strMeasure13.value);
    }
    if (strMeasure14.present) {
      map['str_measure14'] = Variable<String>(strMeasure14.value);
    }
    if (strMeasure15.present) {
      map['str_measure15'] = Variable<String>(strMeasure15.value);
    }
    if (strMeasure16.present) {
      map['str_measure16'] = Variable<String>(strMeasure16.value);
    }
    if (strMeasure17.present) {
      map['str_measure17'] = Variable<String>(strMeasure17.value);
    }
    if (strMeasure18.present) {
      map['str_measure18'] = Variable<String>(strMeasure18.value);
    }
    if (strMeasure19.present) {
      map['str_measure19'] = Variable<String>(strMeasure19.value);
    }
    if (strMeasure20.present) {
      map['str_measure20'] = Variable<String>(strMeasure20.value);
    }
    if (strSource.present) {
      map['str_source'] = Variable<String>(strSource.value);
    }
    if (strImageSource.present) {
      map['str_image_source'] = Variable<String>(strImageSource.value);
    }
    if (strCreativeCommonsConfirmed.present) {
      map['str_creative_commons_confirmed'] = Variable<String>(
        strCreativeCommonsConfirmed.value,
      );
    }
    if (dateModified.present) {
      map['date_modified'] = Variable<String>(dateModified.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MealsCompanion(')
          ..write('idMeal: $idMeal, ')
          ..write('strMeal: $strMeal, ')
          ..write('strMealAlternate: $strMealAlternate, ')
          ..write('strCategory: $strCategory, ')
          ..write('strArea: $strArea, ')
          ..write('strInstructions: $strInstructions, ')
          ..write('strMealThumb: $strMealThumb, ')
          ..write('strTags: $strTags, ')
          ..write('strYoutube: $strYoutube, ')
          ..write('strIngredient1: $strIngredient1, ')
          ..write('strIngredient2: $strIngredient2, ')
          ..write('strIngredient3: $strIngredient3, ')
          ..write('strIngredient4: $strIngredient4, ')
          ..write('strIngredient5: $strIngredient5, ')
          ..write('strIngredient6: $strIngredient6, ')
          ..write('strIngredient7: $strIngredient7, ')
          ..write('strIngredient8: $strIngredient8, ')
          ..write('strIngredient9: $strIngredient9, ')
          ..write('strIngredient10: $strIngredient10, ')
          ..write('strIngredient11: $strIngredient11, ')
          ..write('strIngredient12: $strIngredient12, ')
          ..write('strIngredient13: $strIngredient13, ')
          ..write('strIngredient14: $strIngredient14, ')
          ..write('strIngredient15: $strIngredient15, ')
          ..write('strIngredient16: $strIngredient16, ')
          ..write('strIngredient17: $strIngredient17, ')
          ..write('strIngredient18: $strIngredient18, ')
          ..write('strIngredient19: $strIngredient19, ')
          ..write('strIngredient20: $strIngredient20, ')
          ..write('strMeasure1: $strMeasure1, ')
          ..write('strMeasure2: $strMeasure2, ')
          ..write('strMeasure3: $strMeasure3, ')
          ..write('strMeasure4: $strMeasure4, ')
          ..write('strMeasure5: $strMeasure5, ')
          ..write('strMeasure6: $strMeasure6, ')
          ..write('strMeasure7: $strMeasure7, ')
          ..write('strMeasure8: $strMeasure8, ')
          ..write('strMeasure9: $strMeasure9, ')
          ..write('strMeasure10: $strMeasure10, ')
          ..write('strMeasure11: $strMeasure11, ')
          ..write('strMeasure12: $strMeasure12, ')
          ..write('strMeasure13: $strMeasure13, ')
          ..write('strMeasure14: $strMeasure14, ')
          ..write('strMeasure15: $strMeasure15, ')
          ..write('strMeasure16: $strMeasure16, ')
          ..write('strMeasure17: $strMeasure17, ')
          ..write('strMeasure18: $strMeasure18, ')
          ..write('strMeasure19: $strMeasure19, ')
          ..write('strMeasure20: $strMeasure20, ')
          ..write('strSource: $strSource, ')
          ..write('strImageSource: $strImageSource, ')
          ..write('strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, ')
          ..write('dateModified: $dateModified, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class Drinks extends Table with TableInfo<Drinks, Drink> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Drinks(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idDrinkMeta = const VerificationMeta(
    'idDrink',
  );
  late final GeneratedColumn<String> idDrink = GeneratedColumn<String>(
    'id_drink',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL PRIMARY KEY',
  );
  static const VerificationMeta _strDrinkMeta = const VerificationMeta(
    'strDrink',
  );
  late final GeneratedColumn<String> strDrink = GeneratedColumn<String>(
    'str_drink',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strDrinkAlternateMeta = const VerificationMeta(
    'strDrinkAlternate',
  );
  late final GeneratedColumn<String> strDrinkAlternate =
      GeneratedColumn<String>(
        'str_drink_alternate',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _strTagsMeta = const VerificationMeta(
    'strTags',
  );
  late final GeneratedColumn<String> strTags = GeneratedColumn<String>(
    'str_tags',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strVideoMeta = const VerificationMeta(
    'strVideo',
  );
  late final GeneratedColumn<String> strVideo = GeneratedColumn<String>(
    'str_video',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strCategoryMeta = const VerificationMeta(
    'strCategory',
  );
  late final GeneratedColumn<String> strCategory = GeneratedColumn<String>(
    'str_category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIbaMeta = const VerificationMeta('strIba');
  late final GeneratedColumn<String> strIba = GeneratedColumn<String>(
    'str_iba',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strAlcoholicMeta = const VerificationMeta(
    'strAlcoholic',
  );
  late final GeneratedColumn<String> strAlcoholic = GeneratedColumn<String>(
    'str_alcoholic',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strGlassMeta = const VerificationMeta(
    'strGlass',
  );
  late final GeneratedColumn<String> strGlass = GeneratedColumn<String>(
    'str_glass',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strInstructionsMeta = const VerificationMeta(
    'strInstructions',
  );
  late final GeneratedColumn<String> strInstructions = GeneratedColumn<String>(
    'str_instructions',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strInstructionsEsMeta = const VerificationMeta(
    'strInstructionsEs',
  );
  late final GeneratedColumn<String> strInstructionsEs =
      GeneratedColumn<String>(
        'str_instructions_es',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _strInstructionsDeMeta = const VerificationMeta(
    'strInstructionsDe',
  );
  late final GeneratedColumn<String> strInstructionsDe =
      GeneratedColumn<String>(
        'str_instructions_de',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _strInstructionsFrMeta = const VerificationMeta(
    'strInstructionsFr',
  );
  late final GeneratedColumn<String> strInstructionsFr =
      GeneratedColumn<String>(
        'str_instructions_fr',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _strInstructionsItMeta = const VerificationMeta(
    'strInstructionsIt',
  );
  late final GeneratedColumn<String> strInstructionsIt =
      GeneratedColumn<String>(
        'str_instructions_it',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _strInstructionsZhHansMeta =
      const VerificationMeta('strInstructionsZhHans');
  late final GeneratedColumn<String> strInstructionsZhHans =
      GeneratedColumn<String>(
        'str_instructions_zh_hans',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _strInstructionsZhHantMeta =
      const VerificationMeta('strInstructionsZhHant');
  late final GeneratedColumn<String> strInstructionsZhHant =
      GeneratedColumn<String>(
        'str_instructions_zh_hant',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _strDrinkThumbMeta = const VerificationMeta(
    'strDrinkThumb',
  );
  late final GeneratedColumn<String> strDrinkThumb = GeneratedColumn<String>(
    'str_drink_thumb',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient1Meta = const VerificationMeta(
    'strIngredient1',
  );
  late final GeneratedColumn<String> strIngredient1 = GeneratedColumn<String>(
    'str_ingredient1',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient2Meta = const VerificationMeta(
    'strIngredient2',
  );
  late final GeneratedColumn<String> strIngredient2 = GeneratedColumn<String>(
    'str_ingredient2',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient3Meta = const VerificationMeta(
    'strIngredient3',
  );
  late final GeneratedColumn<String> strIngredient3 = GeneratedColumn<String>(
    'str_ingredient3',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient4Meta = const VerificationMeta(
    'strIngredient4',
  );
  late final GeneratedColumn<String> strIngredient4 = GeneratedColumn<String>(
    'str_ingredient4',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient5Meta = const VerificationMeta(
    'strIngredient5',
  );
  late final GeneratedColumn<String> strIngredient5 = GeneratedColumn<String>(
    'str_ingredient5',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient6Meta = const VerificationMeta(
    'strIngredient6',
  );
  late final GeneratedColumn<String> strIngredient6 = GeneratedColumn<String>(
    'str_ingredient6',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient7Meta = const VerificationMeta(
    'strIngredient7',
  );
  late final GeneratedColumn<String> strIngredient7 = GeneratedColumn<String>(
    'str_ingredient7',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient8Meta = const VerificationMeta(
    'strIngredient8',
  );
  late final GeneratedColumn<String> strIngredient8 = GeneratedColumn<String>(
    'str_ingredient8',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient9Meta = const VerificationMeta(
    'strIngredient9',
  );
  late final GeneratedColumn<String> strIngredient9 = GeneratedColumn<String>(
    'str_ingredient9',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient10Meta = const VerificationMeta(
    'strIngredient10',
  );
  late final GeneratedColumn<String> strIngredient10 = GeneratedColumn<String>(
    'str_ingredient10',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient11Meta = const VerificationMeta(
    'strIngredient11',
  );
  late final GeneratedColumn<String> strIngredient11 = GeneratedColumn<String>(
    'str_ingredient11',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient12Meta = const VerificationMeta(
    'strIngredient12',
  );
  late final GeneratedColumn<String> strIngredient12 = GeneratedColumn<String>(
    'str_ingredient12',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient13Meta = const VerificationMeta(
    'strIngredient13',
  );
  late final GeneratedColumn<String> strIngredient13 = GeneratedColumn<String>(
    'str_ingredient13',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient14Meta = const VerificationMeta(
    'strIngredient14',
  );
  late final GeneratedColumn<String> strIngredient14 = GeneratedColumn<String>(
    'str_ingredient14',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strIngredient15Meta = const VerificationMeta(
    'strIngredient15',
  );
  late final GeneratedColumn<String> strIngredient15 = GeneratedColumn<String>(
    'str_ingredient15',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure1Meta = const VerificationMeta(
    'strMeasure1',
  );
  late final GeneratedColumn<String> strMeasure1 = GeneratedColumn<String>(
    'str_measure1',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure2Meta = const VerificationMeta(
    'strMeasure2',
  );
  late final GeneratedColumn<String> strMeasure2 = GeneratedColumn<String>(
    'str_measure2',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure3Meta = const VerificationMeta(
    'strMeasure3',
  );
  late final GeneratedColumn<String> strMeasure3 = GeneratedColumn<String>(
    'str_measure3',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure4Meta = const VerificationMeta(
    'strMeasure4',
  );
  late final GeneratedColumn<String> strMeasure4 = GeneratedColumn<String>(
    'str_measure4',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure5Meta = const VerificationMeta(
    'strMeasure5',
  );
  late final GeneratedColumn<String> strMeasure5 = GeneratedColumn<String>(
    'str_measure5',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure6Meta = const VerificationMeta(
    'strMeasure6',
  );
  late final GeneratedColumn<String> strMeasure6 = GeneratedColumn<String>(
    'str_measure6',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure7Meta = const VerificationMeta(
    'strMeasure7',
  );
  late final GeneratedColumn<String> strMeasure7 = GeneratedColumn<String>(
    'str_measure7',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure8Meta = const VerificationMeta(
    'strMeasure8',
  );
  late final GeneratedColumn<String> strMeasure8 = GeneratedColumn<String>(
    'str_measure8',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure9Meta = const VerificationMeta(
    'strMeasure9',
  );
  late final GeneratedColumn<String> strMeasure9 = GeneratedColumn<String>(
    'str_measure9',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure10Meta = const VerificationMeta(
    'strMeasure10',
  );
  late final GeneratedColumn<String> strMeasure10 = GeneratedColumn<String>(
    'str_measure10',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure11Meta = const VerificationMeta(
    'strMeasure11',
  );
  late final GeneratedColumn<String> strMeasure11 = GeneratedColumn<String>(
    'str_measure11',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure12Meta = const VerificationMeta(
    'strMeasure12',
  );
  late final GeneratedColumn<String> strMeasure12 = GeneratedColumn<String>(
    'str_measure12',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure13Meta = const VerificationMeta(
    'strMeasure13',
  );
  late final GeneratedColumn<String> strMeasure13 = GeneratedColumn<String>(
    'str_measure13',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure14Meta = const VerificationMeta(
    'strMeasure14',
  );
  late final GeneratedColumn<String> strMeasure14 = GeneratedColumn<String>(
    'str_measure14',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strMeasure15Meta = const VerificationMeta(
    'strMeasure15',
  );
  late final GeneratedColumn<String> strMeasure15 = GeneratedColumn<String>(
    'str_measure15',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strImageSourceMeta = const VerificationMeta(
    'strImageSource',
  );
  late final GeneratedColumn<String> strImageSource = GeneratedColumn<String>(
    'str_image_source',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _strImageAttributionMeta =
      const VerificationMeta('strImageAttribution');
  late final GeneratedColumn<String> strImageAttribution =
      GeneratedColumn<String>(
        'str_image_attribution',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _strCreativeCommonsConfirmedMeta =
      const VerificationMeta('strCreativeCommonsConfirmed');
  late final GeneratedColumn<String> strCreativeCommonsConfirmed =
      GeneratedColumn<String>(
        'str_creative_commons_confirmed',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _dateModifiedMeta = const VerificationMeta(
    'dateModified',
  );
  late final GeneratedColumn<String> dateModified = GeneratedColumn<String>(
    'date_modified',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    idDrink,
    strDrink,
    strDrinkAlternate,
    strTags,
    strVideo,
    strCategory,
    strIba,
    strAlcoholic,
    strGlass,
    strInstructions,
    strInstructionsEs,
    strInstructionsDe,
    strInstructionsFr,
    strInstructionsIt,
    strInstructionsZhHans,
    strInstructionsZhHant,
    strDrinkThumb,
    strIngredient1,
    strIngredient2,
    strIngredient3,
    strIngredient4,
    strIngredient5,
    strIngredient6,
    strIngredient7,
    strIngredient8,
    strIngredient9,
    strIngredient10,
    strIngredient11,
    strIngredient12,
    strIngredient13,
    strIngredient14,
    strIngredient15,
    strMeasure1,
    strMeasure2,
    strMeasure3,
    strMeasure4,
    strMeasure5,
    strMeasure6,
    strMeasure7,
    strMeasure8,
    strMeasure9,
    strMeasure10,
    strMeasure11,
    strMeasure12,
    strMeasure13,
    strMeasure14,
    strMeasure15,
    strImageSource,
    strImageAttribution,
    strCreativeCommonsConfirmed,
    dateModified,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drinks';
  @override
  VerificationContext validateIntegrity(
    Insertable<Drink> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_drink')) {
      context.handle(
        _idDrinkMeta,
        idDrink.isAcceptableOrUnknown(data['id_drink']!, _idDrinkMeta),
      );
    } else if (isInserting) {
      context.missing(_idDrinkMeta);
    }
    if (data.containsKey('str_drink')) {
      context.handle(
        _strDrinkMeta,
        strDrink.isAcceptableOrUnknown(data['str_drink']!, _strDrinkMeta),
      );
    }
    if (data.containsKey('str_drink_alternate')) {
      context.handle(
        _strDrinkAlternateMeta,
        strDrinkAlternate.isAcceptableOrUnknown(
          data['str_drink_alternate']!,
          _strDrinkAlternateMeta,
        ),
      );
    }
    if (data.containsKey('str_tags')) {
      context.handle(
        _strTagsMeta,
        strTags.isAcceptableOrUnknown(data['str_tags']!, _strTagsMeta),
      );
    }
    if (data.containsKey('str_video')) {
      context.handle(
        _strVideoMeta,
        strVideo.isAcceptableOrUnknown(data['str_video']!, _strVideoMeta),
      );
    }
    if (data.containsKey('str_category')) {
      context.handle(
        _strCategoryMeta,
        strCategory.isAcceptableOrUnknown(
          data['str_category']!,
          _strCategoryMeta,
        ),
      );
    }
    if (data.containsKey('str_iba')) {
      context.handle(
        _strIbaMeta,
        strIba.isAcceptableOrUnknown(data['str_iba']!, _strIbaMeta),
      );
    }
    if (data.containsKey('str_alcoholic')) {
      context.handle(
        _strAlcoholicMeta,
        strAlcoholic.isAcceptableOrUnknown(
          data['str_alcoholic']!,
          _strAlcoholicMeta,
        ),
      );
    }
    if (data.containsKey('str_glass')) {
      context.handle(
        _strGlassMeta,
        strGlass.isAcceptableOrUnknown(data['str_glass']!, _strGlassMeta),
      );
    }
    if (data.containsKey('str_instructions')) {
      context.handle(
        _strInstructionsMeta,
        strInstructions.isAcceptableOrUnknown(
          data['str_instructions']!,
          _strInstructionsMeta,
        ),
      );
    }
    if (data.containsKey('str_instructions_es')) {
      context.handle(
        _strInstructionsEsMeta,
        strInstructionsEs.isAcceptableOrUnknown(
          data['str_instructions_es']!,
          _strInstructionsEsMeta,
        ),
      );
    }
    if (data.containsKey('str_instructions_de')) {
      context.handle(
        _strInstructionsDeMeta,
        strInstructionsDe.isAcceptableOrUnknown(
          data['str_instructions_de']!,
          _strInstructionsDeMeta,
        ),
      );
    }
    if (data.containsKey('str_instructions_fr')) {
      context.handle(
        _strInstructionsFrMeta,
        strInstructionsFr.isAcceptableOrUnknown(
          data['str_instructions_fr']!,
          _strInstructionsFrMeta,
        ),
      );
    }
    if (data.containsKey('str_instructions_it')) {
      context.handle(
        _strInstructionsItMeta,
        strInstructionsIt.isAcceptableOrUnknown(
          data['str_instructions_it']!,
          _strInstructionsItMeta,
        ),
      );
    }
    if (data.containsKey('str_instructions_zh_hans')) {
      context.handle(
        _strInstructionsZhHansMeta,
        strInstructionsZhHans.isAcceptableOrUnknown(
          data['str_instructions_zh_hans']!,
          _strInstructionsZhHansMeta,
        ),
      );
    }
    if (data.containsKey('str_instructions_zh_hant')) {
      context.handle(
        _strInstructionsZhHantMeta,
        strInstructionsZhHant.isAcceptableOrUnknown(
          data['str_instructions_zh_hant']!,
          _strInstructionsZhHantMeta,
        ),
      );
    }
    if (data.containsKey('str_drink_thumb')) {
      context.handle(
        _strDrinkThumbMeta,
        strDrinkThumb.isAcceptableOrUnknown(
          data['str_drink_thumb']!,
          _strDrinkThumbMeta,
        ),
      );
    }
    if (data.containsKey('str_ingredient1')) {
      context.handle(
        _strIngredient1Meta,
        strIngredient1.isAcceptableOrUnknown(
          data['str_ingredient1']!,
          _strIngredient1Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient2')) {
      context.handle(
        _strIngredient2Meta,
        strIngredient2.isAcceptableOrUnknown(
          data['str_ingredient2']!,
          _strIngredient2Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient3')) {
      context.handle(
        _strIngredient3Meta,
        strIngredient3.isAcceptableOrUnknown(
          data['str_ingredient3']!,
          _strIngredient3Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient4')) {
      context.handle(
        _strIngredient4Meta,
        strIngredient4.isAcceptableOrUnknown(
          data['str_ingredient4']!,
          _strIngredient4Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient5')) {
      context.handle(
        _strIngredient5Meta,
        strIngredient5.isAcceptableOrUnknown(
          data['str_ingredient5']!,
          _strIngredient5Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient6')) {
      context.handle(
        _strIngredient6Meta,
        strIngredient6.isAcceptableOrUnknown(
          data['str_ingredient6']!,
          _strIngredient6Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient7')) {
      context.handle(
        _strIngredient7Meta,
        strIngredient7.isAcceptableOrUnknown(
          data['str_ingredient7']!,
          _strIngredient7Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient8')) {
      context.handle(
        _strIngredient8Meta,
        strIngredient8.isAcceptableOrUnknown(
          data['str_ingredient8']!,
          _strIngredient8Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient9')) {
      context.handle(
        _strIngredient9Meta,
        strIngredient9.isAcceptableOrUnknown(
          data['str_ingredient9']!,
          _strIngredient9Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient10')) {
      context.handle(
        _strIngredient10Meta,
        strIngredient10.isAcceptableOrUnknown(
          data['str_ingredient10']!,
          _strIngredient10Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient11')) {
      context.handle(
        _strIngredient11Meta,
        strIngredient11.isAcceptableOrUnknown(
          data['str_ingredient11']!,
          _strIngredient11Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient12')) {
      context.handle(
        _strIngredient12Meta,
        strIngredient12.isAcceptableOrUnknown(
          data['str_ingredient12']!,
          _strIngredient12Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient13')) {
      context.handle(
        _strIngredient13Meta,
        strIngredient13.isAcceptableOrUnknown(
          data['str_ingredient13']!,
          _strIngredient13Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient14')) {
      context.handle(
        _strIngredient14Meta,
        strIngredient14.isAcceptableOrUnknown(
          data['str_ingredient14']!,
          _strIngredient14Meta,
        ),
      );
    }
    if (data.containsKey('str_ingredient15')) {
      context.handle(
        _strIngredient15Meta,
        strIngredient15.isAcceptableOrUnknown(
          data['str_ingredient15']!,
          _strIngredient15Meta,
        ),
      );
    }
    if (data.containsKey('str_measure1')) {
      context.handle(
        _strMeasure1Meta,
        strMeasure1.isAcceptableOrUnknown(
          data['str_measure1']!,
          _strMeasure1Meta,
        ),
      );
    }
    if (data.containsKey('str_measure2')) {
      context.handle(
        _strMeasure2Meta,
        strMeasure2.isAcceptableOrUnknown(
          data['str_measure2']!,
          _strMeasure2Meta,
        ),
      );
    }
    if (data.containsKey('str_measure3')) {
      context.handle(
        _strMeasure3Meta,
        strMeasure3.isAcceptableOrUnknown(
          data['str_measure3']!,
          _strMeasure3Meta,
        ),
      );
    }
    if (data.containsKey('str_measure4')) {
      context.handle(
        _strMeasure4Meta,
        strMeasure4.isAcceptableOrUnknown(
          data['str_measure4']!,
          _strMeasure4Meta,
        ),
      );
    }
    if (data.containsKey('str_measure5')) {
      context.handle(
        _strMeasure5Meta,
        strMeasure5.isAcceptableOrUnknown(
          data['str_measure5']!,
          _strMeasure5Meta,
        ),
      );
    }
    if (data.containsKey('str_measure6')) {
      context.handle(
        _strMeasure6Meta,
        strMeasure6.isAcceptableOrUnknown(
          data['str_measure6']!,
          _strMeasure6Meta,
        ),
      );
    }
    if (data.containsKey('str_measure7')) {
      context.handle(
        _strMeasure7Meta,
        strMeasure7.isAcceptableOrUnknown(
          data['str_measure7']!,
          _strMeasure7Meta,
        ),
      );
    }
    if (data.containsKey('str_measure8')) {
      context.handle(
        _strMeasure8Meta,
        strMeasure8.isAcceptableOrUnknown(
          data['str_measure8']!,
          _strMeasure8Meta,
        ),
      );
    }
    if (data.containsKey('str_measure9')) {
      context.handle(
        _strMeasure9Meta,
        strMeasure9.isAcceptableOrUnknown(
          data['str_measure9']!,
          _strMeasure9Meta,
        ),
      );
    }
    if (data.containsKey('str_measure10')) {
      context.handle(
        _strMeasure10Meta,
        strMeasure10.isAcceptableOrUnknown(
          data['str_measure10']!,
          _strMeasure10Meta,
        ),
      );
    }
    if (data.containsKey('str_measure11')) {
      context.handle(
        _strMeasure11Meta,
        strMeasure11.isAcceptableOrUnknown(
          data['str_measure11']!,
          _strMeasure11Meta,
        ),
      );
    }
    if (data.containsKey('str_measure12')) {
      context.handle(
        _strMeasure12Meta,
        strMeasure12.isAcceptableOrUnknown(
          data['str_measure12']!,
          _strMeasure12Meta,
        ),
      );
    }
    if (data.containsKey('str_measure13')) {
      context.handle(
        _strMeasure13Meta,
        strMeasure13.isAcceptableOrUnknown(
          data['str_measure13']!,
          _strMeasure13Meta,
        ),
      );
    }
    if (data.containsKey('str_measure14')) {
      context.handle(
        _strMeasure14Meta,
        strMeasure14.isAcceptableOrUnknown(
          data['str_measure14']!,
          _strMeasure14Meta,
        ),
      );
    }
    if (data.containsKey('str_measure15')) {
      context.handle(
        _strMeasure15Meta,
        strMeasure15.isAcceptableOrUnknown(
          data['str_measure15']!,
          _strMeasure15Meta,
        ),
      );
    }
    if (data.containsKey('str_image_source')) {
      context.handle(
        _strImageSourceMeta,
        strImageSource.isAcceptableOrUnknown(
          data['str_image_source']!,
          _strImageSourceMeta,
        ),
      );
    }
    if (data.containsKey('str_image_attribution')) {
      context.handle(
        _strImageAttributionMeta,
        strImageAttribution.isAcceptableOrUnknown(
          data['str_image_attribution']!,
          _strImageAttributionMeta,
        ),
      );
    }
    if (data.containsKey('str_creative_commons_confirmed')) {
      context.handle(
        _strCreativeCommonsConfirmedMeta,
        strCreativeCommonsConfirmed.isAcceptableOrUnknown(
          data['str_creative_commons_confirmed']!,
          _strCreativeCommonsConfirmedMeta,
        ),
      );
    }
    if (data.containsKey('date_modified')) {
      context.handle(
        _dateModifiedMeta,
        dateModified.isAcceptableOrUnknown(
          data['date_modified']!,
          _dateModifiedMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idDrink};
  @override
  Drink map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Drink(
      idDrink: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_drink'],
      )!,
      strDrink: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_drink'],
      ),
      strDrinkAlternate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_drink_alternate'],
      ),
      strTags: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_tags'],
      ),
      strVideo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_video'],
      ),
      strCategory: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_category'],
      ),
      strIba: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_iba'],
      ),
      strAlcoholic: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_alcoholic'],
      ),
      strGlass: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_glass'],
      ),
      strInstructions: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_instructions'],
      ),
      strInstructionsEs: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_instructions_es'],
      ),
      strInstructionsDe: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_instructions_de'],
      ),
      strInstructionsFr: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_instructions_fr'],
      ),
      strInstructionsIt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_instructions_it'],
      ),
      strInstructionsZhHans: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_instructions_zh_hans'],
      ),
      strInstructionsZhHant: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_instructions_zh_hant'],
      ),
      strDrinkThumb: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_drink_thumb'],
      ),
      strIngredient1: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient1'],
      ),
      strIngredient2: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient2'],
      ),
      strIngredient3: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient3'],
      ),
      strIngredient4: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient4'],
      ),
      strIngredient5: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient5'],
      ),
      strIngredient6: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient6'],
      ),
      strIngredient7: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient7'],
      ),
      strIngredient8: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient8'],
      ),
      strIngredient9: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient9'],
      ),
      strIngredient10: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient10'],
      ),
      strIngredient11: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient11'],
      ),
      strIngredient12: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient12'],
      ),
      strIngredient13: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient13'],
      ),
      strIngredient14: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient14'],
      ),
      strIngredient15: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_ingredient15'],
      ),
      strMeasure1: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure1'],
      ),
      strMeasure2: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure2'],
      ),
      strMeasure3: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure3'],
      ),
      strMeasure4: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure4'],
      ),
      strMeasure5: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure5'],
      ),
      strMeasure6: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure6'],
      ),
      strMeasure7: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure7'],
      ),
      strMeasure8: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure8'],
      ),
      strMeasure9: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure9'],
      ),
      strMeasure10: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure10'],
      ),
      strMeasure11: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure11'],
      ),
      strMeasure12: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure12'],
      ),
      strMeasure13: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure13'],
      ),
      strMeasure14: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure14'],
      ),
      strMeasure15: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_measure15'],
      ),
      strImageSource: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_image_source'],
      ),
      strImageAttribution: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_image_attribution'],
      ),
      strCreativeCommonsConfirmed: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_creative_commons_confirmed'],
      ),
      dateModified: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date_modified'],
      ),
    );
  }

  @override
  Drinks createAlias(String alias) {
    return Drinks(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Drink extends DataClass implements Insertable<Drink> {
  final String idDrink;
  final String? strDrink;
  final String? strDrinkAlternate;
  final String? strTags;
  final String? strVideo;
  final String? strCategory;
  final String? strIba;
  final String? strAlcoholic;
  final String? strGlass;

  /// Instructions in multiple languages
  final String? strInstructions;
  final String? strInstructionsEs;
  final String? strInstructionsDe;
  final String? strInstructionsFr;
  final String? strInstructionsIt;
  final String? strInstructionsZhHans;
  final String? strInstructionsZhHant;
  final String? strDrinkThumb;

  /// Ingredients (1-15)
  final String? strIngredient1;
  final String? strIngredient2;
  final String? strIngredient3;
  final String? strIngredient4;
  final String? strIngredient5;
  final String? strIngredient6;
  final String? strIngredient7;
  final String? strIngredient8;
  final String? strIngredient9;
  final String? strIngredient10;
  final String? strIngredient11;
  final String? strIngredient12;
  final String? strIngredient13;
  final String? strIngredient14;
  final String? strIngredient15;

  /// Measures (1-15)
  final String? strMeasure1;
  final String? strMeasure2;
  final String? strMeasure3;
  final String? strMeasure4;
  final String? strMeasure5;
  final String? strMeasure6;
  final String? strMeasure7;
  final String? strMeasure8;
  final String? strMeasure9;
  final String? strMeasure10;
  final String? strMeasure11;
  final String? strMeasure12;
  final String? strMeasure13;
  final String? strMeasure14;
  final String? strMeasure15;
  final String? strImageSource;
  final String? strImageAttribution;
  final String? strCreativeCommonsConfirmed;
  final String? dateModified;
  const Drink({
    required this.idDrink,
    this.strDrink,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
    this.strCategory,
    this.strIba,
    this.strAlcoholic,
    this.strGlass,
    this.strInstructions,
    this.strInstructionsEs,
    this.strInstructionsDe,
    this.strInstructionsFr,
    this.strInstructionsIt,
    this.strInstructionsZhHans,
    this.strInstructionsZhHant,
    this.strDrinkThumb,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strImageSource,
    this.strImageAttribution,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_drink'] = Variable<String>(idDrink);
    if (!nullToAbsent || strDrink != null) {
      map['str_drink'] = Variable<String>(strDrink);
    }
    if (!nullToAbsent || strDrinkAlternate != null) {
      map['str_drink_alternate'] = Variable<String>(strDrinkAlternate);
    }
    if (!nullToAbsent || strTags != null) {
      map['str_tags'] = Variable<String>(strTags);
    }
    if (!nullToAbsent || strVideo != null) {
      map['str_video'] = Variable<String>(strVideo);
    }
    if (!nullToAbsent || strCategory != null) {
      map['str_category'] = Variable<String>(strCategory);
    }
    if (!nullToAbsent || strIba != null) {
      map['str_iba'] = Variable<String>(strIba);
    }
    if (!nullToAbsent || strAlcoholic != null) {
      map['str_alcoholic'] = Variable<String>(strAlcoholic);
    }
    if (!nullToAbsent || strGlass != null) {
      map['str_glass'] = Variable<String>(strGlass);
    }
    if (!nullToAbsent || strInstructions != null) {
      map['str_instructions'] = Variable<String>(strInstructions);
    }
    if (!nullToAbsent || strInstructionsEs != null) {
      map['str_instructions_es'] = Variable<String>(strInstructionsEs);
    }
    if (!nullToAbsent || strInstructionsDe != null) {
      map['str_instructions_de'] = Variable<String>(strInstructionsDe);
    }
    if (!nullToAbsent || strInstructionsFr != null) {
      map['str_instructions_fr'] = Variable<String>(strInstructionsFr);
    }
    if (!nullToAbsent || strInstructionsIt != null) {
      map['str_instructions_it'] = Variable<String>(strInstructionsIt);
    }
    if (!nullToAbsent || strInstructionsZhHans != null) {
      map['str_instructions_zh_hans'] = Variable<String>(strInstructionsZhHans);
    }
    if (!nullToAbsent || strInstructionsZhHant != null) {
      map['str_instructions_zh_hant'] = Variable<String>(strInstructionsZhHant);
    }
    if (!nullToAbsent || strDrinkThumb != null) {
      map['str_drink_thumb'] = Variable<String>(strDrinkThumb);
    }
    if (!nullToAbsent || strIngredient1 != null) {
      map['str_ingredient1'] = Variable<String>(strIngredient1);
    }
    if (!nullToAbsent || strIngredient2 != null) {
      map['str_ingredient2'] = Variable<String>(strIngredient2);
    }
    if (!nullToAbsent || strIngredient3 != null) {
      map['str_ingredient3'] = Variable<String>(strIngredient3);
    }
    if (!nullToAbsent || strIngredient4 != null) {
      map['str_ingredient4'] = Variable<String>(strIngredient4);
    }
    if (!nullToAbsent || strIngredient5 != null) {
      map['str_ingredient5'] = Variable<String>(strIngredient5);
    }
    if (!nullToAbsent || strIngredient6 != null) {
      map['str_ingredient6'] = Variable<String>(strIngredient6);
    }
    if (!nullToAbsent || strIngredient7 != null) {
      map['str_ingredient7'] = Variable<String>(strIngredient7);
    }
    if (!nullToAbsent || strIngredient8 != null) {
      map['str_ingredient8'] = Variable<String>(strIngredient8);
    }
    if (!nullToAbsent || strIngredient9 != null) {
      map['str_ingredient9'] = Variable<String>(strIngredient9);
    }
    if (!nullToAbsent || strIngredient10 != null) {
      map['str_ingredient10'] = Variable<String>(strIngredient10);
    }
    if (!nullToAbsent || strIngredient11 != null) {
      map['str_ingredient11'] = Variable<String>(strIngredient11);
    }
    if (!nullToAbsent || strIngredient12 != null) {
      map['str_ingredient12'] = Variable<String>(strIngredient12);
    }
    if (!nullToAbsent || strIngredient13 != null) {
      map['str_ingredient13'] = Variable<String>(strIngredient13);
    }
    if (!nullToAbsent || strIngredient14 != null) {
      map['str_ingredient14'] = Variable<String>(strIngredient14);
    }
    if (!nullToAbsent || strIngredient15 != null) {
      map['str_ingredient15'] = Variable<String>(strIngredient15);
    }
    if (!nullToAbsent || strMeasure1 != null) {
      map['str_measure1'] = Variable<String>(strMeasure1);
    }
    if (!nullToAbsent || strMeasure2 != null) {
      map['str_measure2'] = Variable<String>(strMeasure2);
    }
    if (!nullToAbsent || strMeasure3 != null) {
      map['str_measure3'] = Variable<String>(strMeasure3);
    }
    if (!nullToAbsent || strMeasure4 != null) {
      map['str_measure4'] = Variable<String>(strMeasure4);
    }
    if (!nullToAbsent || strMeasure5 != null) {
      map['str_measure5'] = Variable<String>(strMeasure5);
    }
    if (!nullToAbsent || strMeasure6 != null) {
      map['str_measure6'] = Variable<String>(strMeasure6);
    }
    if (!nullToAbsent || strMeasure7 != null) {
      map['str_measure7'] = Variable<String>(strMeasure7);
    }
    if (!nullToAbsent || strMeasure8 != null) {
      map['str_measure8'] = Variable<String>(strMeasure8);
    }
    if (!nullToAbsent || strMeasure9 != null) {
      map['str_measure9'] = Variable<String>(strMeasure9);
    }
    if (!nullToAbsent || strMeasure10 != null) {
      map['str_measure10'] = Variable<String>(strMeasure10);
    }
    if (!nullToAbsent || strMeasure11 != null) {
      map['str_measure11'] = Variable<String>(strMeasure11);
    }
    if (!nullToAbsent || strMeasure12 != null) {
      map['str_measure12'] = Variable<String>(strMeasure12);
    }
    if (!nullToAbsent || strMeasure13 != null) {
      map['str_measure13'] = Variable<String>(strMeasure13);
    }
    if (!nullToAbsent || strMeasure14 != null) {
      map['str_measure14'] = Variable<String>(strMeasure14);
    }
    if (!nullToAbsent || strMeasure15 != null) {
      map['str_measure15'] = Variable<String>(strMeasure15);
    }
    if (!nullToAbsent || strImageSource != null) {
      map['str_image_source'] = Variable<String>(strImageSource);
    }
    if (!nullToAbsent || strImageAttribution != null) {
      map['str_image_attribution'] = Variable<String>(strImageAttribution);
    }
    if (!nullToAbsent || strCreativeCommonsConfirmed != null) {
      map['str_creative_commons_confirmed'] = Variable<String>(
        strCreativeCommonsConfirmed,
      );
    }
    if (!nullToAbsent || dateModified != null) {
      map['date_modified'] = Variable<String>(dateModified);
    }
    return map;
  }

  DrinksCompanion toCompanion(bool nullToAbsent) {
    return DrinksCompanion(
      idDrink: Value(idDrink),
      strDrink: strDrink == null && nullToAbsent
          ? const Value.absent()
          : Value(strDrink),
      strDrinkAlternate: strDrinkAlternate == null && nullToAbsent
          ? const Value.absent()
          : Value(strDrinkAlternate),
      strTags: strTags == null && nullToAbsent
          ? const Value.absent()
          : Value(strTags),
      strVideo: strVideo == null && nullToAbsent
          ? const Value.absent()
          : Value(strVideo),
      strCategory: strCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(strCategory),
      strIba: strIba == null && nullToAbsent
          ? const Value.absent()
          : Value(strIba),
      strAlcoholic: strAlcoholic == null && nullToAbsent
          ? const Value.absent()
          : Value(strAlcoholic),
      strGlass: strGlass == null && nullToAbsent
          ? const Value.absent()
          : Value(strGlass),
      strInstructions: strInstructions == null && nullToAbsent
          ? const Value.absent()
          : Value(strInstructions),
      strInstructionsEs: strInstructionsEs == null && nullToAbsent
          ? const Value.absent()
          : Value(strInstructionsEs),
      strInstructionsDe: strInstructionsDe == null && nullToAbsent
          ? const Value.absent()
          : Value(strInstructionsDe),
      strInstructionsFr: strInstructionsFr == null && nullToAbsent
          ? const Value.absent()
          : Value(strInstructionsFr),
      strInstructionsIt: strInstructionsIt == null && nullToAbsent
          ? const Value.absent()
          : Value(strInstructionsIt),
      strInstructionsZhHans: strInstructionsZhHans == null && nullToAbsent
          ? const Value.absent()
          : Value(strInstructionsZhHans),
      strInstructionsZhHant: strInstructionsZhHant == null && nullToAbsent
          ? const Value.absent()
          : Value(strInstructionsZhHant),
      strDrinkThumb: strDrinkThumb == null && nullToAbsent
          ? const Value.absent()
          : Value(strDrinkThumb),
      strIngredient1: strIngredient1 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient1),
      strIngredient2: strIngredient2 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient2),
      strIngredient3: strIngredient3 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient3),
      strIngredient4: strIngredient4 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient4),
      strIngredient5: strIngredient5 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient5),
      strIngredient6: strIngredient6 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient6),
      strIngredient7: strIngredient7 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient7),
      strIngredient8: strIngredient8 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient8),
      strIngredient9: strIngredient9 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient9),
      strIngredient10: strIngredient10 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient10),
      strIngredient11: strIngredient11 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient11),
      strIngredient12: strIngredient12 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient12),
      strIngredient13: strIngredient13 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient13),
      strIngredient14: strIngredient14 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient14),
      strIngredient15: strIngredient15 == null && nullToAbsent
          ? const Value.absent()
          : Value(strIngredient15),
      strMeasure1: strMeasure1 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure1),
      strMeasure2: strMeasure2 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure2),
      strMeasure3: strMeasure3 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure3),
      strMeasure4: strMeasure4 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure4),
      strMeasure5: strMeasure5 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure5),
      strMeasure6: strMeasure6 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure6),
      strMeasure7: strMeasure7 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure7),
      strMeasure8: strMeasure8 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure8),
      strMeasure9: strMeasure9 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure9),
      strMeasure10: strMeasure10 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure10),
      strMeasure11: strMeasure11 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure11),
      strMeasure12: strMeasure12 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure12),
      strMeasure13: strMeasure13 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure13),
      strMeasure14: strMeasure14 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure14),
      strMeasure15: strMeasure15 == null && nullToAbsent
          ? const Value.absent()
          : Value(strMeasure15),
      strImageSource: strImageSource == null && nullToAbsent
          ? const Value.absent()
          : Value(strImageSource),
      strImageAttribution: strImageAttribution == null && nullToAbsent
          ? const Value.absent()
          : Value(strImageAttribution),
      strCreativeCommonsConfirmed:
          strCreativeCommonsConfirmed == null && nullToAbsent
          ? const Value.absent()
          : Value(strCreativeCommonsConfirmed),
      dateModified: dateModified == null && nullToAbsent
          ? const Value.absent()
          : Value(dateModified),
    );
  }

  factory Drink.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Drink(
      idDrink: serializer.fromJson<String>(json['id_drink']),
      strDrink: serializer.fromJson<String?>(json['str_drink']),
      strDrinkAlternate: serializer.fromJson<String?>(
        json['str_drink_alternate'],
      ),
      strTags: serializer.fromJson<String?>(json['str_tags']),
      strVideo: serializer.fromJson<String?>(json['str_video']),
      strCategory: serializer.fromJson<String?>(json['str_category']),
      strIba: serializer.fromJson<String?>(json['str_iba']),
      strAlcoholic: serializer.fromJson<String?>(json['str_alcoholic']),
      strGlass: serializer.fromJson<String?>(json['str_glass']),
      strInstructions: serializer.fromJson<String?>(json['str_instructions']),
      strInstructionsEs: serializer.fromJson<String?>(
        json['str_instructions_es'],
      ),
      strInstructionsDe: serializer.fromJson<String?>(
        json['str_instructions_de'],
      ),
      strInstructionsFr: serializer.fromJson<String?>(
        json['str_instructions_fr'],
      ),
      strInstructionsIt: serializer.fromJson<String?>(
        json['str_instructions_it'],
      ),
      strInstructionsZhHans: serializer.fromJson<String?>(
        json['str_instructions_zh_hans'],
      ),
      strInstructionsZhHant: serializer.fromJson<String?>(
        json['str_instructions_zh_hant'],
      ),
      strDrinkThumb: serializer.fromJson<String?>(json['str_drink_thumb']),
      strIngredient1: serializer.fromJson<String?>(json['str_ingredient1']),
      strIngredient2: serializer.fromJson<String?>(json['str_ingredient2']),
      strIngredient3: serializer.fromJson<String?>(json['str_ingredient3']),
      strIngredient4: serializer.fromJson<String?>(json['str_ingredient4']),
      strIngredient5: serializer.fromJson<String?>(json['str_ingredient5']),
      strIngredient6: serializer.fromJson<String?>(json['str_ingredient6']),
      strIngredient7: serializer.fromJson<String?>(json['str_ingredient7']),
      strIngredient8: serializer.fromJson<String?>(json['str_ingredient8']),
      strIngredient9: serializer.fromJson<String?>(json['str_ingredient9']),
      strIngredient10: serializer.fromJson<String?>(json['str_ingredient10']),
      strIngredient11: serializer.fromJson<String?>(json['str_ingredient11']),
      strIngredient12: serializer.fromJson<String?>(json['str_ingredient12']),
      strIngredient13: serializer.fromJson<String?>(json['str_ingredient13']),
      strIngredient14: serializer.fromJson<String?>(json['str_ingredient14']),
      strIngredient15: serializer.fromJson<String?>(json['str_ingredient15']),
      strMeasure1: serializer.fromJson<String?>(json['str_measure1']),
      strMeasure2: serializer.fromJson<String?>(json['str_measure2']),
      strMeasure3: serializer.fromJson<String?>(json['str_measure3']),
      strMeasure4: serializer.fromJson<String?>(json['str_measure4']),
      strMeasure5: serializer.fromJson<String?>(json['str_measure5']),
      strMeasure6: serializer.fromJson<String?>(json['str_measure6']),
      strMeasure7: serializer.fromJson<String?>(json['str_measure7']),
      strMeasure8: serializer.fromJson<String?>(json['str_measure8']),
      strMeasure9: serializer.fromJson<String?>(json['str_measure9']),
      strMeasure10: serializer.fromJson<String?>(json['str_measure10']),
      strMeasure11: serializer.fromJson<String?>(json['str_measure11']),
      strMeasure12: serializer.fromJson<String?>(json['str_measure12']),
      strMeasure13: serializer.fromJson<String?>(json['str_measure13']),
      strMeasure14: serializer.fromJson<String?>(json['str_measure14']),
      strMeasure15: serializer.fromJson<String?>(json['str_measure15']),
      strImageSource: serializer.fromJson<String?>(json['str_image_source']),
      strImageAttribution: serializer.fromJson<String?>(
        json['str_image_attribution'],
      ),
      strCreativeCommonsConfirmed: serializer.fromJson<String?>(
        json['str_creative_commons_confirmed'],
      ),
      dateModified: serializer.fromJson<String?>(json['date_modified']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id_drink': serializer.toJson<String>(idDrink),
      'str_drink': serializer.toJson<String?>(strDrink),
      'str_drink_alternate': serializer.toJson<String?>(strDrinkAlternate),
      'str_tags': serializer.toJson<String?>(strTags),
      'str_video': serializer.toJson<String?>(strVideo),
      'str_category': serializer.toJson<String?>(strCategory),
      'str_iba': serializer.toJson<String?>(strIba),
      'str_alcoholic': serializer.toJson<String?>(strAlcoholic),
      'str_glass': serializer.toJson<String?>(strGlass),
      'str_instructions': serializer.toJson<String?>(strInstructions),
      'str_instructions_es': serializer.toJson<String?>(strInstructionsEs),
      'str_instructions_de': serializer.toJson<String?>(strInstructionsDe),
      'str_instructions_fr': serializer.toJson<String?>(strInstructionsFr),
      'str_instructions_it': serializer.toJson<String?>(strInstructionsIt),
      'str_instructions_zh_hans': serializer.toJson<String?>(
        strInstructionsZhHans,
      ),
      'str_instructions_zh_hant': serializer.toJson<String?>(
        strInstructionsZhHant,
      ),
      'str_drink_thumb': serializer.toJson<String?>(strDrinkThumb),
      'str_ingredient1': serializer.toJson<String?>(strIngredient1),
      'str_ingredient2': serializer.toJson<String?>(strIngredient2),
      'str_ingredient3': serializer.toJson<String?>(strIngredient3),
      'str_ingredient4': serializer.toJson<String?>(strIngredient4),
      'str_ingredient5': serializer.toJson<String?>(strIngredient5),
      'str_ingredient6': serializer.toJson<String?>(strIngredient6),
      'str_ingredient7': serializer.toJson<String?>(strIngredient7),
      'str_ingredient8': serializer.toJson<String?>(strIngredient8),
      'str_ingredient9': serializer.toJson<String?>(strIngredient9),
      'str_ingredient10': serializer.toJson<String?>(strIngredient10),
      'str_ingredient11': serializer.toJson<String?>(strIngredient11),
      'str_ingredient12': serializer.toJson<String?>(strIngredient12),
      'str_ingredient13': serializer.toJson<String?>(strIngredient13),
      'str_ingredient14': serializer.toJson<String?>(strIngredient14),
      'str_ingredient15': serializer.toJson<String?>(strIngredient15),
      'str_measure1': serializer.toJson<String?>(strMeasure1),
      'str_measure2': serializer.toJson<String?>(strMeasure2),
      'str_measure3': serializer.toJson<String?>(strMeasure3),
      'str_measure4': serializer.toJson<String?>(strMeasure4),
      'str_measure5': serializer.toJson<String?>(strMeasure5),
      'str_measure6': serializer.toJson<String?>(strMeasure6),
      'str_measure7': serializer.toJson<String?>(strMeasure7),
      'str_measure8': serializer.toJson<String?>(strMeasure8),
      'str_measure9': serializer.toJson<String?>(strMeasure9),
      'str_measure10': serializer.toJson<String?>(strMeasure10),
      'str_measure11': serializer.toJson<String?>(strMeasure11),
      'str_measure12': serializer.toJson<String?>(strMeasure12),
      'str_measure13': serializer.toJson<String?>(strMeasure13),
      'str_measure14': serializer.toJson<String?>(strMeasure14),
      'str_measure15': serializer.toJson<String?>(strMeasure15),
      'str_image_source': serializer.toJson<String?>(strImageSource),
      'str_image_attribution': serializer.toJson<String?>(strImageAttribution),
      'str_creative_commons_confirmed': serializer.toJson<String?>(
        strCreativeCommonsConfirmed,
      ),
      'date_modified': serializer.toJson<String?>(dateModified),
    };
  }

  Drink copyWith({
    String? idDrink,
    Value<String?> strDrink = const Value.absent(),
    Value<String?> strDrinkAlternate = const Value.absent(),
    Value<String?> strTags = const Value.absent(),
    Value<String?> strVideo = const Value.absent(),
    Value<String?> strCategory = const Value.absent(),
    Value<String?> strIba = const Value.absent(),
    Value<String?> strAlcoholic = const Value.absent(),
    Value<String?> strGlass = const Value.absent(),
    Value<String?> strInstructions = const Value.absent(),
    Value<String?> strInstructionsEs = const Value.absent(),
    Value<String?> strInstructionsDe = const Value.absent(),
    Value<String?> strInstructionsFr = const Value.absent(),
    Value<String?> strInstructionsIt = const Value.absent(),
    Value<String?> strInstructionsZhHans = const Value.absent(),
    Value<String?> strInstructionsZhHant = const Value.absent(),
    Value<String?> strDrinkThumb = const Value.absent(),
    Value<String?> strIngredient1 = const Value.absent(),
    Value<String?> strIngredient2 = const Value.absent(),
    Value<String?> strIngredient3 = const Value.absent(),
    Value<String?> strIngredient4 = const Value.absent(),
    Value<String?> strIngredient5 = const Value.absent(),
    Value<String?> strIngredient6 = const Value.absent(),
    Value<String?> strIngredient7 = const Value.absent(),
    Value<String?> strIngredient8 = const Value.absent(),
    Value<String?> strIngredient9 = const Value.absent(),
    Value<String?> strIngredient10 = const Value.absent(),
    Value<String?> strIngredient11 = const Value.absent(),
    Value<String?> strIngredient12 = const Value.absent(),
    Value<String?> strIngredient13 = const Value.absent(),
    Value<String?> strIngredient14 = const Value.absent(),
    Value<String?> strIngredient15 = const Value.absent(),
    Value<String?> strMeasure1 = const Value.absent(),
    Value<String?> strMeasure2 = const Value.absent(),
    Value<String?> strMeasure3 = const Value.absent(),
    Value<String?> strMeasure4 = const Value.absent(),
    Value<String?> strMeasure5 = const Value.absent(),
    Value<String?> strMeasure6 = const Value.absent(),
    Value<String?> strMeasure7 = const Value.absent(),
    Value<String?> strMeasure8 = const Value.absent(),
    Value<String?> strMeasure9 = const Value.absent(),
    Value<String?> strMeasure10 = const Value.absent(),
    Value<String?> strMeasure11 = const Value.absent(),
    Value<String?> strMeasure12 = const Value.absent(),
    Value<String?> strMeasure13 = const Value.absent(),
    Value<String?> strMeasure14 = const Value.absent(),
    Value<String?> strMeasure15 = const Value.absent(),
    Value<String?> strImageSource = const Value.absent(),
    Value<String?> strImageAttribution = const Value.absent(),
    Value<String?> strCreativeCommonsConfirmed = const Value.absent(),
    Value<String?> dateModified = const Value.absent(),
  }) => Drink(
    idDrink: idDrink ?? this.idDrink,
    strDrink: strDrink.present ? strDrink.value : this.strDrink,
    strDrinkAlternate: strDrinkAlternate.present
        ? strDrinkAlternate.value
        : this.strDrinkAlternate,
    strTags: strTags.present ? strTags.value : this.strTags,
    strVideo: strVideo.present ? strVideo.value : this.strVideo,
    strCategory: strCategory.present ? strCategory.value : this.strCategory,
    strIba: strIba.present ? strIba.value : this.strIba,
    strAlcoholic: strAlcoholic.present ? strAlcoholic.value : this.strAlcoholic,
    strGlass: strGlass.present ? strGlass.value : this.strGlass,
    strInstructions: strInstructions.present
        ? strInstructions.value
        : this.strInstructions,
    strInstructionsEs: strInstructionsEs.present
        ? strInstructionsEs.value
        : this.strInstructionsEs,
    strInstructionsDe: strInstructionsDe.present
        ? strInstructionsDe.value
        : this.strInstructionsDe,
    strInstructionsFr: strInstructionsFr.present
        ? strInstructionsFr.value
        : this.strInstructionsFr,
    strInstructionsIt: strInstructionsIt.present
        ? strInstructionsIt.value
        : this.strInstructionsIt,
    strInstructionsZhHans: strInstructionsZhHans.present
        ? strInstructionsZhHans.value
        : this.strInstructionsZhHans,
    strInstructionsZhHant: strInstructionsZhHant.present
        ? strInstructionsZhHant.value
        : this.strInstructionsZhHant,
    strDrinkThumb: strDrinkThumb.present
        ? strDrinkThumb.value
        : this.strDrinkThumb,
    strIngredient1: strIngredient1.present
        ? strIngredient1.value
        : this.strIngredient1,
    strIngredient2: strIngredient2.present
        ? strIngredient2.value
        : this.strIngredient2,
    strIngredient3: strIngredient3.present
        ? strIngredient3.value
        : this.strIngredient3,
    strIngredient4: strIngredient4.present
        ? strIngredient4.value
        : this.strIngredient4,
    strIngredient5: strIngredient5.present
        ? strIngredient5.value
        : this.strIngredient5,
    strIngredient6: strIngredient6.present
        ? strIngredient6.value
        : this.strIngredient6,
    strIngredient7: strIngredient7.present
        ? strIngredient7.value
        : this.strIngredient7,
    strIngredient8: strIngredient8.present
        ? strIngredient8.value
        : this.strIngredient8,
    strIngredient9: strIngredient9.present
        ? strIngredient9.value
        : this.strIngredient9,
    strIngredient10: strIngredient10.present
        ? strIngredient10.value
        : this.strIngredient10,
    strIngredient11: strIngredient11.present
        ? strIngredient11.value
        : this.strIngredient11,
    strIngredient12: strIngredient12.present
        ? strIngredient12.value
        : this.strIngredient12,
    strIngredient13: strIngredient13.present
        ? strIngredient13.value
        : this.strIngredient13,
    strIngredient14: strIngredient14.present
        ? strIngredient14.value
        : this.strIngredient14,
    strIngredient15: strIngredient15.present
        ? strIngredient15.value
        : this.strIngredient15,
    strMeasure1: strMeasure1.present ? strMeasure1.value : this.strMeasure1,
    strMeasure2: strMeasure2.present ? strMeasure2.value : this.strMeasure2,
    strMeasure3: strMeasure3.present ? strMeasure3.value : this.strMeasure3,
    strMeasure4: strMeasure4.present ? strMeasure4.value : this.strMeasure4,
    strMeasure5: strMeasure5.present ? strMeasure5.value : this.strMeasure5,
    strMeasure6: strMeasure6.present ? strMeasure6.value : this.strMeasure6,
    strMeasure7: strMeasure7.present ? strMeasure7.value : this.strMeasure7,
    strMeasure8: strMeasure8.present ? strMeasure8.value : this.strMeasure8,
    strMeasure9: strMeasure9.present ? strMeasure9.value : this.strMeasure9,
    strMeasure10: strMeasure10.present ? strMeasure10.value : this.strMeasure10,
    strMeasure11: strMeasure11.present ? strMeasure11.value : this.strMeasure11,
    strMeasure12: strMeasure12.present ? strMeasure12.value : this.strMeasure12,
    strMeasure13: strMeasure13.present ? strMeasure13.value : this.strMeasure13,
    strMeasure14: strMeasure14.present ? strMeasure14.value : this.strMeasure14,
    strMeasure15: strMeasure15.present ? strMeasure15.value : this.strMeasure15,
    strImageSource: strImageSource.present
        ? strImageSource.value
        : this.strImageSource,
    strImageAttribution: strImageAttribution.present
        ? strImageAttribution.value
        : this.strImageAttribution,
    strCreativeCommonsConfirmed: strCreativeCommonsConfirmed.present
        ? strCreativeCommonsConfirmed.value
        : this.strCreativeCommonsConfirmed,
    dateModified: dateModified.present ? dateModified.value : this.dateModified,
  );
  Drink copyWithCompanion(DrinksCompanion data) {
    return Drink(
      idDrink: data.idDrink.present ? data.idDrink.value : this.idDrink,
      strDrink: data.strDrink.present ? data.strDrink.value : this.strDrink,
      strDrinkAlternate: data.strDrinkAlternate.present
          ? data.strDrinkAlternate.value
          : this.strDrinkAlternate,
      strTags: data.strTags.present ? data.strTags.value : this.strTags,
      strVideo: data.strVideo.present ? data.strVideo.value : this.strVideo,
      strCategory: data.strCategory.present
          ? data.strCategory.value
          : this.strCategory,
      strIba: data.strIba.present ? data.strIba.value : this.strIba,
      strAlcoholic: data.strAlcoholic.present
          ? data.strAlcoholic.value
          : this.strAlcoholic,
      strGlass: data.strGlass.present ? data.strGlass.value : this.strGlass,
      strInstructions: data.strInstructions.present
          ? data.strInstructions.value
          : this.strInstructions,
      strInstructionsEs: data.strInstructionsEs.present
          ? data.strInstructionsEs.value
          : this.strInstructionsEs,
      strInstructionsDe: data.strInstructionsDe.present
          ? data.strInstructionsDe.value
          : this.strInstructionsDe,
      strInstructionsFr: data.strInstructionsFr.present
          ? data.strInstructionsFr.value
          : this.strInstructionsFr,
      strInstructionsIt: data.strInstructionsIt.present
          ? data.strInstructionsIt.value
          : this.strInstructionsIt,
      strInstructionsZhHans: data.strInstructionsZhHans.present
          ? data.strInstructionsZhHans.value
          : this.strInstructionsZhHans,
      strInstructionsZhHant: data.strInstructionsZhHant.present
          ? data.strInstructionsZhHant.value
          : this.strInstructionsZhHant,
      strDrinkThumb: data.strDrinkThumb.present
          ? data.strDrinkThumb.value
          : this.strDrinkThumb,
      strIngredient1: data.strIngredient1.present
          ? data.strIngredient1.value
          : this.strIngredient1,
      strIngredient2: data.strIngredient2.present
          ? data.strIngredient2.value
          : this.strIngredient2,
      strIngredient3: data.strIngredient3.present
          ? data.strIngredient3.value
          : this.strIngredient3,
      strIngredient4: data.strIngredient4.present
          ? data.strIngredient4.value
          : this.strIngredient4,
      strIngredient5: data.strIngredient5.present
          ? data.strIngredient5.value
          : this.strIngredient5,
      strIngredient6: data.strIngredient6.present
          ? data.strIngredient6.value
          : this.strIngredient6,
      strIngredient7: data.strIngredient7.present
          ? data.strIngredient7.value
          : this.strIngredient7,
      strIngredient8: data.strIngredient8.present
          ? data.strIngredient8.value
          : this.strIngredient8,
      strIngredient9: data.strIngredient9.present
          ? data.strIngredient9.value
          : this.strIngredient9,
      strIngredient10: data.strIngredient10.present
          ? data.strIngredient10.value
          : this.strIngredient10,
      strIngredient11: data.strIngredient11.present
          ? data.strIngredient11.value
          : this.strIngredient11,
      strIngredient12: data.strIngredient12.present
          ? data.strIngredient12.value
          : this.strIngredient12,
      strIngredient13: data.strIngredient13.present
          ? data.strIngredient13.value
          : this.strIngredient13,
      strIngredient14: data.strIngredient14.present
          ? data.strIngredient14.value
          : this.strIngredient14,
      strIngredient15: data.strIngredient15.present
          ? data.strIngredient15.value
          : this.strIngredient15,
      strMeasure1: data.strMeasure1.present
          ? data.strMeasure1.value
          : this.strMeasure1,
      strMeasure2: data.strMeasure2.present
          ? data.strMeasure2.value
          : this.strMeasure2,
      strMeasure3: data.strMeasure3.present
          ? data.strMeasure3.value
          : this.strMeasure3,
      strMeasure4: data.strMeasure4.present
          ? data.strMeasure4.value
          : this.strMeasure4,
      strMeasure5: data.strMeasure5.present
          ? data.strMeasure5.value
          : this.strMeasure5,
      strMeasure6: data.strMeasure6.present
          ? data.strMeasure6.value
          : this.strMeasure6,
      strMeasure7: data.strMeasure7.present
          ? data.strMeasure7.value
          : this.strMeasure7,
      strMeasure8: data.strMeasure8.present
          ? data.strMeasure8.value
          : this.strMeasure8,
      strMeasure9: data.strMeasure9.present
          ? data.strMeasure9.value
          : this.strMeasure9,
      strMeasure10: data.strMeasure10.present
          ? data.strMeasure10.value
          : this.strMeasure10,
      strMeasure11: data.strMeasure11.present
          ? data.strMeasure11.value
          : this.strMeasure11,
      strMeasure12: data.strMeasure12.present
          ? data.strMeasure12.value
          : this.strMeasure12,
      strMeasure13: data.strMeasure13.present
          ? data.strMeasure13.value
          : this.strMeasure13,
      strMeasure14: data.strMeasure14.present
          ? data.strMeasure14.value
          : this.strMeasure14,
      strMeasure15: data.strMeasure15.present
          ? data.strMeasure15.value
          : this.strMeasure15,
      strImageSource: data.strImageSource.present
          ? data.strImageSource.value
          : this.strImageSource,
      strImageAttribution: data.strImageAttribution.present
          ? data.strImageAttribution.value
          : this.strImageAttribution,
      strCreativeCommonsConfirmed: data.strCreativeCommonsConfirmed.present
          ? data.strCreativeCommonsConfirmed.value
          : this.strCreativeCommonsConfirmed,
      dateModified: data.dateModified.present
          ? data.dateModified.value
          : this.dateModified,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Drink(')
          ..write('idDrink: $idDrink, ')
          ..write('strDrink: $strDrink, ')
          ..write('strDrinkAlternate: $strDrinkAlternate, ')
          ..write('strTags: $strTags, ')
          ..write('strVideo: $strVideo, ')
          ..write('strCategory: $strCategory, ')
          ..write('strIba: $strIba, ')
          ..write('strAlcoholic: $strAlcoholic, ')
          ..write('strGlass: $strGlass, ')
          ..write('strInstructions: $strInstructions, ')
          ..write('strInstructionsEs: $strInstructionsEs, ')
          ..write('strInstructionsDe: $strInstructionsDe, ')
          ..write('strInstructionsFr: $strInstructionsFr, ')
          ..write('strInstructionsIt: $strInstructionsIt, ')
          ..write('strInstructionsZhHans: $strInstructionsZhHans, ')
          ..write('strInstructionsZhHant: $strInstructionsZhHant, ')
          ..write('strDrinkThumb: $strDrinkThumb, ')
          ..write('strIngredient1: $strIngredient1, ')
          ..write('strIngredient2: $strIngredient2, ')
          ..write('strIngredient3: $strIngredient3, ')
          ..write('strIngredient4: $strIngredient4, ')
          ..write('strIngredient5: $strIngredient5, ')
          ..write('strIngredient6: $strIngredient6, ')
          ..write('strIngredient7: $strIngredient7, ')
          ..write('strIngredient8: $strIngredient8, ')
          ..write('strIngredient9: $strIngredient9, ')
          ..write('strIngredient10: $strIngredient10, ')
          ..write('strIngredient11: $strIngredient11, ')
          ..write('strIngredient12: $strIngredient12, ')
          ..write('strIngredient13: $strIngredient13, ')
          ..write('strIngredient14: $strIngredient14, ')
          ..write('strIngredient15: $strIngredient15, ')
          ..write('strMeasure1: $strMeasure1, ')
          ..write('strMeasure2: $strMeasure2, ')
          ..write('strMeasure3: $strMeasure3, ')
          ..write('strMeasure4: $strMeasure4, ')
          ..write('strMeasure5: $strMeasure5, ')
          ..write('strMeasure6: $strMeasure6, ')
          ..write('strMeasure7: $strMeasure7, ')
          ..write('strMeasure8: $strMeasure8, ')
          ..write('strMeasure9: $strMeasure9, ')
          ..write('strMeasure10: $strMeasure10, ')
          ..write('strMeasure11: $strMeasure11, ')
          ..write('strMeasure12: $strMeasure12, ')
          ..write('strMeasure13: $strMeasure13, ')
          ..write('strMeasure14: $strMeasure14, ')
          ..write('strMeasure15: $strMeasure15, ')
          ..write('strImageSource: $strImageSource, ')
          ..write('strImageAttribution: $strImageAttribution, ')
          ..write('strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, ')
          ..write('dateModified: $dateModified')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    idDrink,
    strDrink,
    strDrinkAlternate,
    strTags,
    strVideo,
    strCategory,
    strIba,
    strAlcoholic,
    strGlass,
    strInstructions,
    strInstructionsEs,
    strInstructionsDe,
    strInstructionsFr,
    strInstructionsIt,
    strInstructionsZhHans,
    strInstructionsZhHant,
    strDrinkThumb,
    strIngredient1,
    strIngredient2,
    strIngredient3,
    strIngredient4,
    strIngredient5,
    strIngredient6,
    strIngredient7,
    strIngredient8,
    strIngredient9,
    strIngredient10,
    strIngredient11,
    strIngredient12,
    strIngredient13,
    strIngredient14,
    strIngredient15,
    strMeasure1,
    strMeasure2,
    strMeasure3,
    strMeasure4,
    strMeasure5,
    strMeasure6,
    strMeasure7,
    strMeasure8,
    strMeasure9,
    strMeasure10,
    strMeasure11,
    strMeasure12,
    strMeasure13,
    strMeasure14,
    strMeasure15,
    strImageSource,
    strImageAttribution,
    strCreativeCommonsConfirmed,
    dateModified,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Drink &&
          other.idDrink == this.idDrink &&
          other.strDrink == this.strDrink &&
          other.strDrinkAlternate == this.strDrinkAlternate &&
          other.strTags == this.strTags &&
          other.strVideo == this.strVideo &&
          other.strCategory == this.strCategory &&
          other.strIba == this.strIba &&
          other.strAlcoholic == this.strAlcoholic &&
          other.strGlass == this.strGlass &&
          other.strInstructions == this.strInstructions &&
          other.strInstructionsEs == this.strInstructionsEs &&
          other.strInstructionsDe == this.strInstructionsDe &&
          other.strInstructionsFr == this.strInstructionsFr &&
          other.strInstructionsIt == this.strInstructionsIt &&
          other.strInstructionsZhHans == this.strInstructionsZhHans &&
          other.strInstructionsZhHant == this.strInstructionsZhHant &&
          other.strDrinkThumb == this.strDrinkThumb &&
          other.strIngredient1 == this.strIngredient1 &&
          other.strIngredient2 == this.strIngredient2 &&
          other.strIngredient3 == this.strIngredient3 &&
          other.strIngredient4 == this.strIngredient4 &&
          other.strIngredient5 == this.strIngredient5 &&
          other.strIngredient6 == this.strIngredient6 &&
          other.strIngredient7 == this.strIngredient7 &&
          other.strIngredient8 == this.strIngredient8 &&
          other.strIngredient9 == this.strIngredient9 &&
          other.strIngredient10 == this.strIngredient10 &&
          other.strIngredient11 == this.strIngredient11 &&
          other.strIngredient12 == this.strIngredient12 &&
          other.strIngredient13 == this.strIngredient13 &&
          other.strIngredient14 == this.strIngredient14 &&
          other.strIngredient15 == this.strIngredient15 &&
          other.strMeasure1 == this.strMeasure1 &&
          other.strMeasure2 == this.strMeasure2 &&
          other.strMeasure3 == this.strMeasure3 &&
          other.strMeasure4 == this.strMeasure4 &&
          other.strMeasure5 == this.strMeasure5 &&
          other.strMeasure6 == this.strMeasure6 &&
          other.strMeasure7 == this.strMeasure7 &&
          other.strMeasure8 == this.strMeasure8 &&
          other.strMeasure9 == this.strMeasure9 &&
          other.strMeasure10 == this.strMeasure10 &&
          other.strMeasure11 == this.strMeasure11 &&
          other.strMeasure12 == this.strMeasure12 &&
          other.strMeasure13 == this.strMeasure13 &&
          other.strMeasure14 == this.strMeasure14 &&
          other.strMeasure15 == this.strMeasure15 &&
          other.strImageSource == this.strImageSource &&
          other.strImageAttribution == this.strImageAttribution &&
          other.strCreativeCommonsConfirmed ==
              this.strCreativeCommonsConfirmed &&
          other.dateModified == this.dateModified);
}

class DrinksCompanion extends UpdateCompanion<Drink> {
  final Value<String> idDrink;
  final Value<String?> strDrink;
  final Value<String?> strDrinkAlternate;
  final Value<String?> strTags;
  final Value<String?> strVideo;
  final Value<String?> strCategory;
  final Value<String?> strIba;
  final Value<String?> strAlcoholic;
  final Value<String?> strGlass;
  final Value<String?> strInstructions;
  final Value<String?> strInstructionsEs;
  final Value<String?> strInstructionsDe;
  final Value<String?> strInstructionsFr;
  final Value<String?> strInstructionsIt;
  final Value<String?> strInstructionsZhHans;
  final Value<String?> strInstructionsZhHant;
  final Value<String?> strDrinkThumb;
  final Value<String?> strIngredient1;
  final Value<String?> strIngredient2;
  final Value<String?> strIngredient3;
  final Value<String?> strIngredient4;
  final Value<String?> strIngredient5;
  final Value<String?> strIngredient6;
  final Value<String?> strIngredient7;
  final Value<String?> strIngredient8;
  final Value<String?> strIngredient9;
  final Value<String?> strIngredient10;
  final Value<String?> strIngredient11;
  final Value<String?> strIngredient12;
  final Value<String?> strIngredient13;
  final Value<String?> strIngredient14;
  final Value<String?> strIngredient15;
  final Value<String?> strMeasure1;
  final Value<String?> strMeasure2;
  final Value<String?> strMeasure3;
  final Value<String?> strMeasure4;
  final Value<String?> strMeasure5;
  final Value<String?> strMeasure6;
  final Value<String?> strMeasure7;
  final Value<String?> strMeasure8;
  final Value<String?> strMeasure9;
  final Value<String?> strMeasure10;
  final Value<String?> strMeasure11;
  final Value<String?> strMeasure12;
  final Value<String?> strMeasure13;
  final Value<String?> strMeasure14;
  final Value<String?> strMeasure15;
  final Value<String?> strImageSource;
  final Value<String?> strImageAttribution;
  final Value<String?> strCreativeCommonsConfirmed;
  final Value<String?> dateModified;
  final Value<int> rowid;
  const DrinksCompanion({
    this.idDrink = const Value.absent(),
    this.strDrink = const Value.absent(),
    this.strDrinkAlternate = const Value.absent(),
    this.strTags = const Value.absent(),
    this.strVideo = const Value.absent(),
    this.strCategory = const Value.absent(),
    this.strIba = const Value.absent(),
    this.strAlcoholic = const Value.absent(),
    this.strGlass = const Value.absent(),
    this.strInstructions = const Value.absent(),
    this.strInstructionsEs = const Value.absent(),
    this.strInstructionsDe = const Value.absent(),
    this.strInstructionsFr = const Value.absent(),
    this.strInstructionsIt = const Value.absent(),
    this.strInstructionsZhHans = const Value.absent(),
    this.strInstructionsZhHant = const Value.absent(),
    this.strDrinkThumb = const Value.absent(),
    this.strIngredient1 = const Value.absent(),
    this.strIngredient2 = const Value.absent(),
    this.strIngredient3 = const Value.absent(),
    this.strIngredient4 = const Value.absent(),
    this.strIngredient5 = const Value.absent(),
    this.strIngredient6 = const Value.absent(),
    this.strIngredient7 = const Value.absent(),
    this.strIngredient8 = const Value.absent(),
    this.strIngredient9 = const Value.absent(),
    this.strIngredient10 = const Value.absent(),
    this.strIngredient11 = const Value.absent(),
    this.strIngredient12 = const Value.absent(),
    this.strIngredient13 = const Value.absent(),
    this.strIngredient14 = const Value.absent(),
    this.strIngredient15 = const Value.absent(),
    this.strMeasure1 = const Value.absent(),
    this.strMeasure2 = const Value.absent(),
    this.strMeasure3 = const Value.absent(),
    this.strMeasure4 = const Value.absent(),
    this.strMeasure5 = const Value.absent(),
    this.strMeasure6 = const Value.absent(),
    this.strMeasure7 = const Value.absent(),
    this.strMeasure8 = const Value.absent(),
    this.strMeasure9 = const Value.absent(),
    this.strMeasure10 = const Value.absent(),
    this.strMeasure11 = const Value.absent(),
    this.strMeasure12 = const Value.absent(),
    this.strMeasure13 = const Value.absent(),
    this.strMeasure14 = const Value.absent(),
    this.strMeasure15 = const Value.absent(),
    this.strImageSource = const Value.absent(),
    this.strImageAttribution = const Value.absent(),
    this.strCreativeCommonsConfirmed = const Value.absent(),
    this.dateModified = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DrinksCompanion.insert({
    required String idDrink,
    this.strDrink = const Value.absent(),
    this.strDrinkAlternate = const Value.absent(),
    this.strTags = const Value.absent(),
    this.strVideo = const Value.absent(),
    this.strCategory = const Value.absent(),
    this.strIba = const Value.absent(),
    this.strAlcoholic = const Value.absent(),
    this.strGlass = const Value.absent(),
    this.strInstructions = const Value.absent(),
    this.strInstructionsEs = const Value.absent(),
    this.strInstructionsDe = const Value.absent(),
    this.strInstructionsFr = const Value.absent(),
    this.strInstructionsIt = const Value.absent(),
    this.strInstructionsZhHans = const Value.absent(),
    this.strInstructionsZhHant = const Value.absent(),
    this.strDrinkThumb = const Value.absent(),
    this.strIngredient1 = const Value.absent(),
    this.strIngredient2 = const Value.absent(),
    this.strIngredient3 = const Value.absent(),
    this.strIngredient4 = const Value.absent(),
    this.strIngredient5 = const Value.absent(),
    this.strIngredient6 = const Value.absent(),
    this.strIngredient7 = const Value.absent(),
    this.strIngredient8 = const Value.absent(),
    this.strIngredient9 = const Value.absent(),
    this.strIngredient10 = const Value.absent(),
    this.strIngredient11 = const Value.absent(),
    this.strIngredient12 = const Value.absent(),
    this.strIngredient13 = const Value.absent(),
    this.strIngredient14 = const Value.absent(),
    this.strIngredient15 = const Value.absent(),
    this.strMeasure1 = const Value.absent(),
    this.strMeasure2 = const Value.absent(),
    this.strMeasure3 = const Value.absent(),
    this.strMeasure4 = const Value.absent(),
    this.strMeasure5 = const Value.absent(),
    this.strMeasure6 = const Value.absent(),
    this.strMeasure7 = const Value.absent(),
    this.strMeasure8 = const Value.absent(),
    this.strMeasure9 = const Value.absent(),
    this.strMeasure10 = const Value.absent(),
    this.strMeasure11 = const Value.absent(),
    this.strMeasure12 = const Value.absent(),
    this.strMeasure13 = const Value.absent(),
    this.strMeasure14 = const Value.absent(),
    this.strMeasure15 = const Value.absent(),
    this.strImageSource = const Value.absent(),
    this.strImageAttribution = const Value.absent(),
    this.strCreativeCommonsConfirmed = const Value.absent(),
    this.dateModified = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : idDrink = Value(idDrink);
  static Insertable<Drink> custom({
    Expression<String>? idDrink,
    Expression<String>? strDrink,
    Expression<String>? strDrinkAlternate,
    Expression<String>? strTags,
    Expression<String>? strVideo,
    Expression<String>? strCategory,
    Expression<String>? strIba,
    Expression<String>? strAlcoholic,
    Expression<String>? strGlass,
    Expression<String>? strInstructions,
    Expression<String>? strInstructionsEs,
    Expression<String>? strInstructionsDe,
    Expression<String>? strInstructionsFr,
    Expression<String>? strInstructionsIt,
    Expression<String>? strInstructionsZhHans,
    Expression<String>? strInstructionsZhHant,
    Expression<String>? strDrinkThumb,
    Expression<String>? strIngredient1,
    Expression<String>? strIngredient2,
    Expression<String>? strIngredient3,
    Expression<String>? strIngredient4,
    Expression<String>? strIngredient5,
    Expression<String>? strIngredient6,
    Expression<String>? strIngredient7,
    Expression<String>? strIngredient8,
    Expression<String>? strIngredient9,
    Expression<String>? strIngredient10,
    Expression<String>? strIngredient11,
    Expression<String>? strIngredient12,
    Expression<String>? strIngredient13,
    Expression<String>? strIngredient14,
    Expression<String>? strIngredient15,
    Expression<String>? strMeasure1,
    Expression<String>? strMeasure2,
    Expression<String>? strMeasure3,
    Expression<String>? strMeasure4,
    Expression<String>? strMeasure5,
    Expression<String>? strMeasure6,
    Expression<String>? strMeasure7,
    Expression<String>? strMeasure8,
    Expression<String>? strMeasure9,
    Expression<String>? strMeasure10,
    Expression<String>? strMeasure11,
    Expression<String>? strMeasure12,
    Expression<String>? strMeasure13,
    Expression<String>? strMeasure14,
    Expression<String>? strMeasure15,
    Expression<String>? strImageSource,
    Expression<String>? strImageAttribution,
    Expression<String>? strCreativeCommonsConfirmed,
    Expression<String>? dateModified,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idDrink != null) 'id_drink': idDrink,
      if (strDrink != null) 'str_drink': strDrink,
      if (strDrinkAlternate != null) 'str_drink_alternate': strDrinkAlternate,
      if (strTags != null) 'str_tags': strTags,
      if (strVideo != null) 'str_video': strVideo,
      if (strCategory != null) 'str_category': strCategory,
      if (strIba != null) 'str_iba': strIba,
      if (strAlcoholic != null) 'str_alcoholic': strAlcoholic,
      if (strGlass != null) 'str_glass': strGlass,
      if (strInstructions != null) 'str_instructions': strInstructions,
      if (strInstructionsEs != null) 'str_instructions_es': strInstructionsEs,
      if (strInstructionsDe != null) 'str_instructions_de': strInstructionsDe,
      if (strInstructionsFr != null) 'str_instructions_fr': strInstructionsFr,
      if (strInstructionsIt != null) 'str_instructions_it': strInstructionsIt,
      if (strInstructionsZhHans != null)
        'str_instructions_zh_hans': strInstructionsZhHans,
      if (strInstructionsZhHant != null)
        'str_instructions_zh_hant': strInstructionsZhHant,
      if (strDrinkThumb != null) 'str_drink_thumb': strDrinkThumb,
      if (strIngredient1 != null) 'str_ingredient1': strIngredient1,
      if (strIngredient2 != null) 'str_ingredient2': strIngredient2,
      if (strIngredient3 != null) 'str_ingredient3': strIngredient3,
      if (strIngredient4 != null) 'str_ingredient4': strIngredient4,
      if (strIngredient5 != null) 'str_ingredient5': strIngredient5,
      if (strIngredient6 != null) 'str_ingredient6': strIngredient6,
      if (strIngredient7 != null) 'str_ingredient7': strIngredient7,
      if (strIngredient8 != null) 'str_ingredient8': strIngredient8,
      if (strIngredient9 != null) 'str_ingredient9': strIngredient9,
      if (strIngredient10 != null) 'str_ingredient10': strIngredient10,
      if (strIngredient11 != null) 'str_ingredient11': strIngredient11,
      if (strIngredient12 != null) 'str_ingredient12': strIngredient12,
      if (strIngredient13 != null) 'str_ingredient13': strIngredient13,
      if (strIngredient14 != null) 'str_ingredient14': strIngredient14,
      if (strIngredient15 != null) 'str_ingredient15': strIngredient15,
      if (strMeasure1 != null) 'str_measure1': strMeasure1,
      if (strMeasure2 != null) 'str_measure2': strMeasure2,
      if (strMeasure3 != null) 'str_measure3': strMeasure3,
      if (strMeasure4 != null) 'str_measure4': strMeasure4,
      if (strMeasure5 != null) 'str_measure5': strMeasure5,
      if (strMeasure6 != null) 'str_measure6': strMeasure6,
      if (strMeasure7 != null) 'str_measure7': strMeasure7,
      if (strMeasure8 != null) 'str_measure8': strMeasure8,
      if (strMeasure9 != null) 'str_measure9': strMeasure9,
      if (strMeasure10 != null) 'str_measure10': strMeasure10,
      if (strMeasure11 != null) 'str_measure11': strMeasure11,
      if (strMeasure12 != null) 'str_measure12': strMeasure12,
      if (strMeasure13 != null) 'str_measure13': strMeasure13,
      if (strMeasure14 != null) 'str_measure14': strMeasure14,
      if (strMeasure15 != null) 'str_measure15': strMeasure15,
      if (strImageSource != null) 'str_image_source': strImageSource,
      if (strImageAttribution != null)
        'str_image_attribution': strImageAttribution,
      if (strCreativeCommonsConfirmed != null)
        'str_creative_commons_confirmed': strCreativeCommonsConfirmed,
      if (dateModified != null) 'date_modified': dateModified,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DrinksCompanion copyWith({
    Value<String>? idDrink,
    Value<String?>? strDrink,
    Value<String?>? strDrinkAlternate,
    Value<String?>? strTags,
    Value<String?>? strVideo,
    Value<String?>? strCategory,
    Value<String?>? strIba,
    Value<String?>? strAlcoholic,
    Value<String?>? strGlass,
    Value<String?>? strInstructions,
    Value<String?>? strInstructionsEs,
    Value<String?>? strInstructionsDe,
    Value<String?>? strInstructionsFr,
    Value<String?>? strInstructionsIt,
    Value<String?>? strInstructionsZhHans,
    Value<String?>? strInstructionsZhHant,
    Value<String?>? strDrinkThumb,
    Value<String?>? strIngredient1,
    Value<String?>? strIngredient2,
    Value<String?>? strIngredient3,
    Value<String?>? strIngredient4,
    Value<String?>? strIngredient5,
    Value<String?>? strIngredient6,
    Value<String?>? strIngredient7,
    Value<String?>? strIngredient8,
    Value<String?>? strIngredient9,
    Value<String?>? strIngredient10,
    Value<String?>? strIngredient11,
    Value<String?>? strIngredient12,
    Value<String?>? strIngredient13,
    Value<String?>? strIngredient14,
    Value<String?>? strIngredient15,
    Value<String?>? strMeasure1,
    Value<String?>? strMeasure2,
    Value<String?>? strMeasure3,
    Value<String?>? strMeasure4,
    Value<String?>? strMeasure5,
    Value<String?>? strMeasure6,
    Value<String?>? strMeasure7,
    Value<String?>? strMeasure8,
    Value<String?>? strMeasure9,
    Value<String?>? strMeasure10,
    Value<String?>? strMeasure11,
    Value<String?>? strMeasure12,
    Value<String?>? strMeasure13,
    Value<String?>? strMeasure14,
    Value<String?>? strMeasure15,
    Value<String?>? strImageSource,
    Value<String?>? strImageAttribution,
    Value<String?>? strCreativeCommonsConfirmed,
    Value<String?>? dateModified,
    Value<int>? rowid,
  }) {
    return DrinksCompanion(
      idDrink: idDrink ?? this.idDrink,
      strDrink: strDrink ?? this.strDrink,
      strDrinkAlternate: strDrinkAlternate ?? this.strDrinkAlternate,
      strTags: strTags ?? this.strTags,
      strVideo: strVideo ?? this.strVideo,
      strCategory: strCategory ?? this.strCategory,
      strIba: strIba ?? this.strIba,
      strAlcoholic: strAlcoholic ?? this.strAlcoholic,
      strGlass: strGlass ?? this.strGlass,
      strInstructions: strInstructions ?? this.strInstructions,
      strInstructionsEs: strInstructionsEs ?? this.strInstructionsEs,
      strInstructionsDe: strInstructionsDe ?? this.strInstructionsDe,
      strInstructionsFr: strInstructionsFr ?? this.strInstructionsFr,
      strInstructionsIt: strInstructionsIt ?? this.strInstructionsIt,
      strInstructionsZhHans:
          strInstructionsZhHans ?? this.strInstructionsZhHans,
      strInstructionsZhHant:
          strInstructionsZhHant ?? this.strInstructionsZhHant,
      strDrinkThumb: strDrinkThumb ?? this.strDrinkThumb,
      strIngredient1: strIngredient1 ?? this.strIngredient1,
      strIngredient2: strIngredient2 ?? this.strIngredient2,
      strIngredient3: strIngredient3 ?? this.strIngredient3,
      strIngredient4: strIngredient4 ?? this.strIngredient4,
      strIngredient5: strIngredient5 ?? this.strIngredient5,
      strIngredient6: strIngredient6 ?? this.strIngredient6,
      strIngredient7: strIngredient7 ?? this.strIngredient7,
      strIngredient8: strIngredient8 ?? this.strIngredient8,
      strIngredient9: strIngredient9 ?? this.strIngredient9,
      strIngredient10: strIngredient10 ?? this.strIngredient10,
      strIngredient11: strIngredient11 ?? this.strIngredient11,
      strIngredient12: strIngredient12 ?? this.strIngredient12,
      strIngredient13: strIngredient13 ?? this.strIngredient13,
      strIngredient14: strIngredient14 ?? this.strIngredient14,
      strIngredient15: strIngredient15 ?? this.strIngredient15,
      strMeasure1: strMeasure1 ?? this.strMeasure1,
      strMeasure2: strMeasure2 ?? this.strMeasure2,
      strMeasure3: strMeasure3 ?? this.strMeasure3,
      strMeasure4: strMeasure4 ?? this.strMeasure4,
      strMeasure5: strMeasure5 ?? this.strMeasure5,
      strMeasure6: strMeasure6 ?? this.strMeasure6,
      strMeasure7: strMeasure7 ?? this.strMeasure7,
      strMeasure8: strMeasure8 ?? this.strMeasure8,
      strMeasure9: strMeasure9 ?? this.strMeasure9,
      strMeasure10: strMeasure10 ?? this.strMeasure10,
      strMeasure11: strMeasure11 ?? this.strMeasure11,
      strMeasure12: strMeasure12 ?? this.strMeasure12,
      strMeasure13: strMeasure13 ?? this.strMeasure13,
      strMeasure14: strMeasure14 ?? this.strMeasure14,
      strMeasure15: strMeasure15 ?? this.strMeasure15,
      strImageSource: strImageSource ?? this.strImageSource,
      strImageAttribution: strImageAttribution ?? this.strImageAttribution,
      strCreativeCommonsConfirmed:
          strCreativeCommonsConfirmed ?? this.strCreativeCommonsConfirmed,
      dateModified: dateModified ?? this.dateModified,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idDrink.present) {
      map['id_drink'] = Variable<String>(idDrink.value);
    }
    if (strDrink.present) {
      map['str_drink'] = Variable<String>(strDrink.value);
    }
    if (strDrinkAlternate.present) {
      map['str_drink_alternate'] = Variable<String>(strDrinkAlternate.value);
    }
    if (strTags.present) {
      map['str_tags'] = Variable<String>(strTags.value);
    }
    if (strVideo.present) {
      map['str_video'] = Variable<String>(strVideo.value);
    }
    if (strCategory.present) {
      map['str_category'] = Variable<String>(strCategory.value);
    }
    if (strIba.present) {
      map['str_iba'] = Variable<String>(strIba.value);
    }
    if (strAlcoholic.present) {
      map['str_alcoholic'] = Variable<String>(strAlcoholic.value);
    }
    if (strGlass.present) {
      map['str_glass'] = Variable<String>(strGlass.value);
    }
    if (strInstructions.present) {
      map['str_instructions'] = Variable<String>(strInstructions.value);
    }
    if (strInstructionsEs.present) {
      map['str_instructions_es'] = Variable<String>(strInstructionsEs.value);
    }
    if (strInstructionsDe.present) {
      map['str_instructions_de'] = Variable<String>(strInstructionsDe.value);
    }
    if (strInstructionsFr.present) {
      map['str_instructions_fr'] = Variable<String>(strInstructionsFr.value);
    }
    if (strInstructionsIt.present) {
      map['str_instructions_it'] = Variable<String>(strInstructionsIt.value);
    }
    if (strInstructionsZhHans.present) {
      map['str_instructions_zh_hans'] = Variable<String>(
        strInstructionsZhHans.value,
      );
    }
    if (strInstructionsZhHant.present) {
      map['str_instructions_zh_hant'] = Variable<String>(
        strInstructionsZhHant.value,
      );
    }
    if (strDrinkThumb.present) {
      map['str_drink_thumb'] = Variable<String>(strDrinkThumb.value);
    }
    if (strIngredient1.present) {
      map['str_ingredient1'] = Variable<String>(strIngredient1.value);
    }
    if (strIngredient2.present) {
      map['str_ingredient2'] = Variable<String>(strIngredient2.value);
    }
    if (strIngredient3.present) {
      map['str_ingredient3'] = Variable<String>(strIngredient3.value);
    }
    if (strIngredient4.present) {
      map['str_ingredient4'] = Variable<String>(strIngredient4.value);
    }
    if (strIngredient5.present) {
      map['str_ingredient5'] = Variable<String>(strIngredient5.value);
    }
    if (strIngredient6.present) {
      map['str_ingredient6'] = Variable<String>(strIngredient6.value);
    }
    if (strIngredient7.present) {
      map['str_ingredient7'] = Variable<String>(strIngredient7.value);
    }
    if (strIngredient8.present) {
      map['str_ingredient8'] = Variable<String>(strIngredient8.value);
    }
    if (strIngredient9.present) {
      map['str_ingredient9'] = Variable<String>(strIngredient9.value);
    }
    if (strIngredient10.present) {
      map['str_ingredient10'] = Variable<String>(strIngredient10.value);
    }
    if (strIngredient11.present) {
      map['str_ingredient11'] = Variable<String>(strIngredient11.value);
    }
    if (strIngredient12.present) {
      map['str_ingredient12'] = Variable<String>(strIngredient12.value);
    }
    if (strIngredient13.present) {
      map['str_ingredient13'] = Variable<String>(strIngredient13.value);
    }
    if (strIngredient14.present) {
      map['str_ingredient14'] = Variable<String>(strIngredient14.value);
    }
    if (strIngredient15.present) {
      map['str_ingredient15'] = Variable<String>(strIngredient15.value);
    }
    if (strMeasure1.present) {
      map['str_measure1'] = Variable<String>(strMeasure1.value);
    }
    if (strMeasure2.present) {
      map['str_measure2'] = Variable<String>(strMeasure2.value);
    }
    if (strMeasure3.present) {
      map['str_measure3'] = Variable<String>(strMeasure3.value);
    }
    if (strMeasure4.present) {
      map['str_measure4'] = Variable<String>(strMeasure4.value);
    }
    if (strMeasure5.present) {
      map['str_measure5'] = Variable<String>(strMeasure5.value);
    }
    if (strMeasure6.present) {
      map['str_measure6'] = Variable<String>(strMeasure6.value);
    }
    if (strMeasure7.present) {
      map['str_measure7'] = Variable<String>(strMeasure7.value);
    }
    if (strMeasure8.present) {
      map['str_measure8'] = Variable<String>(strMeasure8.value);
    }
    if (strMeasure9.present) {
      map['str_measure9'] = Variable<String>(strMeasure9.value);
    }
    if (strMeasure10.present) {
      map['str_measure10'] = Variable<String>(strMeasure10.value);
    }
    if (strMeasure11.present) {
      map['str_measure11'] = Variable<String>(strMeasure11.value);
    }
    if (strMeasure12.present) {
      map['str_measure12'] = Variable<String>(strMeasure12.value);
    }
    if (strMeasure13.present) {
      map['str_measure13'] = Variable<String>(strMeasure13.value);
    }
    if (strMeasure14.present) {
      map['str_measure14'] = Variable<String>(strMeasure14.value);
    }
    if (strMeasure15.present) {
      map['str_measure15'] = Variable<String>(strMeasure15.value);
    }
    if (strImageSource.present) {
      map['str_image_source'] = Variable<String>(strImageSource.value);
    }
    if (strImageAttribution.present) {
      map['str_image_attribution'] = Variable<String>(
        strImageAttribution.value,
      );
    }
    if (strCreativeCommonsConfirmed.present) {
      map['str_creative_commons_confirmed'] = Variable<String>(
        strCreativeCommonsConfirmed.value,
      );
    }
    if (dateModified.present) {
      map['date_modified'] = Variable<String>(dateModified.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DrinksCompanion(')
          ..write('idDrink: $idDrink, ')
          ..write('strDrink: $strDrink, ')
          ..write('strDrinkAlternate: $strDrinkAlternate, ')
          ..write('strTags: $strTags, ')
          ..write('strVideo: $strVideo, ')
          ..write('strCategory: $strCategory, ')
          ..write('strIba: $strIba, ')
          ..write('strAlcoholic: $strAlcoholic, ')
          ..write('strGlass: $strGlass, ')
          ..write('strInstructions: $strInstructions, ')
          ..write('strInstructionsEs: $strInstructionsEs, ')
          ..write('strInstructionsDe: $strInstructionsDe, ')
          ..write('strInstructionsFr: $strInstructionsFr, ')
          ..write('strInstructionsIt: $strInstructionsIt, ')
          ..write('strInstructionsZhHans: $strInstructionsZhHans, ')
          ..write('strInstructionsZhHant: $strInstructionsZhHant, ')
          ..write('strDrinkThumb: $strDrinkThumb, ')
          ..write('strIngredient1: $strIngredient1, ')
          ..write('strIngredient2: $strIngredient2, ')
          ..write('strIngredient3: $strIngredient3, ')
          ..write('strIngredient4: $strIngredient4, ')
          ..write('strIngredient5: $strIngredient5, ')
          ..write('strIngredient6: $strIngredient6, ')
          ..write('strIngredient7: $strIngredient7, ')
          ..write('strIngredient8: $strIngredient8, ')
          ..write('strIngredient9: $strIngredient9, ')
          ..write('strIngredient10: $strIngredient10, ')
          ..write('strIngredient11: $strIngredient11, ')
          ..write('strIngredient12: $strIngredient12, ')
          ..write('strIngredient13: $strIngredient13, ')
          ..write('strIngredient14: $strIngredient14, ')
          ..write('strIngredient15: $strIngredient15, ')
          ..write('strMeasure1: $strMeasure1, ')
          ..write('strMeasure2: $strMeasure2, ')
          ..write('strMeasure3: $strMeasure3, ')
          ..write('strMeasure4: $strMeasure4, ')
          ..write('strMeasure5: $strMeasure5, ')
          ..write('strMeasure6: $strMeasure6, ')
          ..write('strMeasure7: $strMeasure7, ')
          ..write('strMeasure8: $strMeasure8, ')
          ..write('strMeasure9: $strMeasure9, ')
          ..write('strMeasure10: $strMeasure10, ')
          ..write('strMeasure11: $strMeasure11, ')
          ..write('strMeasure12: $strMeasure12, ')
          ..write('strMeasure13: $strMeasure13, ')
          ..write('strMeasure14: $strMeasure14, ')
          ..write('strMeasure15: $strMeasure15, ')
          ..write('strImageSource: $strImageSource, ')
          ..write('strImageAttribution: $strImageAttribution, ')
          ..write('strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, ')
          ..write('dateModified: $dateModified, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class Favorites extends Table with TableInfo<Favorites, Favorite> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Favorites(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL PRIMARY KEY',
  );
  static const VerificationMeta _mealIdMeta = const VerificationMeta('mealId');
  late final GeneratedColumn<String> mealId = GeneratedColumn<String>(
    'meal_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL REFERENCES meals(id_meal)ON DELETE CASCADE',
  );
  static const VerificationMeta _drinkIdMeta = const VerificationMeta(
    'drinkId',
  );
  late final GeneratedColumn<String> drinkId = GeneratedColumn<String>(
    'drink_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL REFERENCES drinks(id_drink)ON DELETE CASCADE',
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [id, mealId, drinkId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorites';
  @override
  VerificationContext validateIntegrity(
    Insertable<Favorite> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('meal_id')) {
      context.handle(
        _mealIdMeta,
        mealId.isAcceptableOrUnknown(data['meal_id']!, _mealIdMeta),
      );
    } else if (isInserting) {
      context.missing(_mealIdMeta);
    }
    if (data.containsKey('drink_id')) {
      context.handle(
        _drinkIdMeta,
        drinkId.isAcceptableOrUnknown(data['drink_id']!, _drinkIdMeta),
      );
    } else if (isInserting) {
      context.missing(_drinkIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {mealId, drinkId},
  ];
  @override
  Favorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Favorite(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      mealId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meal_id'],
      )!,
      drinkId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}drink_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  Favorites createAlias(String alias) {
    return Favorites(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['UNIQUE(meal_id, drink_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class Favorite extends DataClass implements Insertable<Favorite> {
  final String id;
  final String mealId;
  final String drinkId;
  final DateTime createdAt;
  const Favorite({
    required this.id,
    required this.mealId,
    required this.drinkId,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['meal_id'] = Variable<String>(mealId);
    map['drink_id'] = Variable<String>(drinkId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FavoritesCompanion toCompanion(bool nullToAbsent) {
    return FavoritesCompanion(
      id: Value(id),
      mealId: Value(mealId),
      drinkId: Value(drinkId),
      createdAt: Value(createdAt),
    );
  }

  factory Favorite.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Favorite(
      id: serializer.fromJson<String>(json['id']),
      mealId: serializer.fromJson<String>(json['meal_id']),
      drinkId: serializer.fromJson<String>(json['drink_id']),
      createdAt: serializer.fromJson<DateTime>(json['created_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'meal_id': serializer.toJson<String>(mealId),
      'drink_id': serializer.toJson<String>(drinkId),
      'created_at': serializer.toJson<DateTime>(createdAt),
    };
  }

  Favorite copyWith({
    String? id,
    String? mealId,
    String? drinkId,
    DateTime? createdAt,
  }) => Favorite(
    id: id ?? this.id,
    mealId: mealId ?? this.mealId,
    drinkId: drinkId ?? this.drinkId,
    createdAt: createdAt ?? this.createdAt,
  );
  Favorite copyWithCompanion(FavoritesCompanion data) {
    return Favorite(
      id: data.id.present ? data.id.value : this.id,
      mealId: data.mealId.present ? data.mealId.value : this.mealId,
      drinkId: data.drinkId.present ? data.drinkId.value : this.drinkId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Favorite(')
          ..write('id: $id, ')
          ..write('mealId: $mealId, ')
          ..write('drinkId: $drinkId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, mealId, drinkId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Favorite &&
          other.id == this.id &&
          other.mealId == this.mealId &&
          other.drinkId == this.drinkId &&
          other.createdAt == this.createdAt);
}

class FavoritesCompanion extends UpdateCompanion<Favorite> {
  final Value<String> id;
  final Value<String> mealId;
  final Value<String> drinkId;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const FavoritesCompanion({
    this.id = const Value.absent(),
    this.mealId = const Value.absent(),
    this.drinkId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FavoritesCompanion.insert({
    required String id,
    required String mealId,
    required String drinkId,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       mealId = Value(mealId),
       drinkId = Value(drinkId),
       createdAt = Value(createdAt);
  static Insertable<Favorite> custom({
    Expression<String>? id,
    Expression<String>? mealId,
    Expression<String>? drinkId,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mealId != null) 'meal_id': mealId,
      if (drinkId != null) 'drink_id': drinkId,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FavoritesCompanion copyWith({
    Value<String>? id,
    Value<String>? mealId,
    Value<String>? drinkId,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return FavoritesCompanion(
      id: id ?? this.id,
      mealId: mealId ?? this.mealId,
      drinkId: drinkId ?? this.drinkId,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (mealId.present) {
      map['meal_id'] = Variable<String>(mealId.value);
    }
    if (drinkId.present) {
      map['drink_id'] = Variable<String>(drinkId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('id: $id, ')
          ..write('mealId: $mealId, ')
          ..write('drinkId: $drinkId, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MealifyDatabase extends GeneratedDatabase {
  _$MealifyDatabase(QueryExecutor e) : super(e);
  $MealifyDatabaseManager get managers => $MealifyDatabaseManager(this);
  late final Meals meals = Meals(this);
  late final Drinks drinks = Drinks(this);
  late final Favorites favorites = Favorites(this);
  late final MealsDao mealsDao = MealsDao(this as MealifyDatabase);
  late final DrinksDao drinksDao = DrinksDao(this as MealifyDatabase);
  late final FavoritesDao favoritesDao = FavoritesDao(this as MealifyDatabase);
  Selectable<Meal> findMealById(String id) {
    return customSelect(
      'SELECT * FROM meals WHERE id_meal = ?1',
      variables: [Variable<String>(id)],
      readsFrom: {meals},
    ).asyncMap(meals.mapFromRow);
  }

  Selectable<Meal> findMealsByIds(List<String> var1) {
    var $arrayStartIndex = 1;
    final expandedvar1 = $expandVar($arrayStartIndex, var1.length);
    $arrayStartIndex += var1.length;
    return customSelect(
      'SELECT * FROM meals WHERE id_meal IN ($expandedvar1)',
      variables: [for (var $ in var1) Variable<String>($)],
      readsFrom: {meals},
    ).asyncMap(meals.mapFromRow);
  }

  Selectable<Favorite> findFavoriteById(String favoriteId) {
    return customSelect(
      'SELECT * FROM favorites WHERE id = ?1',
      variables: [Variable<String>(favoriteId)],
      readsFrom: {favorites},
    ).asyncMap(favorites.mapFromRow);
  }

  Selectable<Favorite> findAllFavorites() {
    return customSelect(
      'SELECT * FROM favorites ORDER BY created_at DESC',
      variables: [],
      readsFrom: {favorites},
    ).asyncMap(favorites.mapFromRow);
  }

  Future<int> deleteFavorite(String favoriteId) {
    return customUpdate(
      'DELETE FROM favorites WHERE id = ?1',
      variables: [Variable<String>(favoriteId)],
      updates: {favorites},
      updateKind: UpdateKind.delete,
    );
  }

  Selectable<Drink> findDrinkById(String id) {
    return customSelect(
      'SELECT * FROM drinks WHERE id_drink = ?1',
      variables: [Variable<String>(id)],
      readsFrom: {drinks},
    ).asyncMap(drinks.mapFromRow);
  }

  Selectable<Drink> findDrinksByIds(List<String> var1) {
    var $arrayStartIndex = 1;
    final expandedvar1 = $expandVar($arrayStartIndex, var1.length);
    $arrayStartIndex += var1.length;
    return customSelect(
      'SELECT * FROM drinks WHERE id_drink IN ($expandedvar1)',
      variables: [for (var $ in var1) Variable<String>($)],
      readsFrom: {drinks},
    ).asyncMap(drinks.mapFromRow);
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    meals,
    drinks,
    favorites,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'meals',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('favorites', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'drinks',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('favorites', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $MealsCreateCompanionBuilder =
    MealsCompanion Function({
      required String idMeal,
      Value<String?> strMeal,
      Value<String?> strMealAlternate,
      Value<String?> strCategory,
      Value<String?> strArea,
      Value<String?> strInstructions,
      Value<String?> strMealThumb,
      Value<String?> strTags,
      Value<String?> strYoutube,
      Value<String?> strIngredient1,
      Value<String?> strIngredient2,
      Value<String?> strIngredient3,
      Value<String?> strIngredient4,
      Value<String?> strIngredient5,
      Value<String?> strIngredient6,
      Value<String?> strIngredient7,
      Value<String?> strIngredient8,
      Value<String?> strIngredient9,
      Value<String?> strIngredient10,
      Value<String?> strIngredient11,
      Value<String?> strIngredient12,
      Value<String?> strIngredient13,
      Value<String?> strIngredient14,
      Value<String?> strIngredient15,
      Value<String?> strIngredient16,
      Value<String?> strIngredient17,
      Value<String?> strIngredient18,
      Value<String?> strIngredient19,
      Value<String?> strIngredient20,
      Value<String?> strMeasure1,
      Value<String?> strMeasure2,
      Value<String?> strMeasure3,
      Value<String?> strMeasure4,
      Value<String?> strMeasure5,
      Value<String?> strMeasure6,
      Value<String?> strMeasure7,
      Value<String?> strMeasure8,
      Value<String?> strMeasure9,
      Value<String?> strMeasure10,
      Value<String?> strMeasure11,
      Value<String?> strMeasure12,
      Value<String?> strMeasure13,
      Value<String?> strMeasure14,
      Value<String?> strMeasure15,
      Value<String?> strMeasure16,
      Value<String?> strMeasure17,
      Value<String?> strMeasure18,
      Value<String?> strMeasure19,
      Value<String?> strMeasure20,
      Value<String?> strSource,
      Value<String?> strImageSource,
      Value<String?> strCreativeCommonsConfirmed,
      Value<String?> dateModified,
      Value<int> rowid,
    });
typedef $MealsUpdateCompanionBuilder =
    MealsCompanion Function({
      Value<String> idMeal,
      Value<String?> strMeal,
      Value<String?> strMealAlternate,
      Value<String?> strCategory,
      Value<String?> strArea,
      Value<String?> strInstructions,
      Value<String?> strMealThumb,
      Value<String?> strTags,
      Value<String?> strYoutube,
      Value<String?> strIngredient1,
      Value<String?> strIngredient2,
      Value<String?> strIngredient3,
      Value<String?> strIngredient4,
      Value<String?> strIngredient5,
      Value<String?> strIngredient6,
      Value<String?> strIngredient7,
      Value<String?> strIngredient8,
      Value<String?> strIngredient9,
      Value<String?> strIngredient10,
      Value<String?> strIngredient11,
      Value<String?> strIngredient12,
      Value<String?> strIngredient13,
      Value<String?> strIngredient14,
      Value<String?> strIngredient15,
      Value<String?> strIngredient16,
      Value<String?> strIngredient17,
      Value<String?> strIngredient18,
      Value<String?> strIngredient19,
      Value<String?> strIngredient20,
      Value<String?> strMeasure1,
      Value<String?> strMeasure2,
      Value<String?> strMeasure3,
      Value<String?> strMeasure4,
      Value<String?> strMeasure5,
      Value<String?> strMeasure6,
      Value<String?> strMeasure7,
      Value<String?> strMeasure8,
      Value<String?> strMeasure9,
      Value<String?> strMeasure10,
      Value<String?> strMeasure11,
      Value<String?> strMeasure12,
      Value<String?> strMeasure13,
      Value<String?> strMeasure14,
      Value<String?> strMeasure15,
      Value<String?> strMeasure16,
      Value<String?> strMeasure17,
      Value<String?> strMeasure18,
      Value<String?> strMeasure19,
      Value<String?> strMeasure20,
      Value<String?> strSource,
      Value<String?> strImageSource,
      Value<String?> strCreativeCommonsConfirmed,
      Value<String?> dateModified,
      Value<int> rowid,
    });

final class $MealsReferences
    extends BaseReferences<_$MealifyDatabase, Meals, Meal> {
  $MealsReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<Favorites, List<Favorite>> _favoritesRefsTable(
    _$MealifyDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.favorites,
    aliasName: $_aliasNameGenerator(db.meals.idMeal, db.favorites.mealId),
  );

  $FavoritesProcessedTableManager get favoritesRefs {
    final manager = $FavoritesTableManager($_db, $_db.favorites).filter(
      (f) => f.mealId.idMeal.sqlEquals($_itemColumn<String>('id_meal')!),
    );

    final cache = $_typedResult.readTableOrNull(_favoritesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $MealsFilterComposer extends Composer<_$MealifyDatabase, Meals> {
  $MealsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get idMeal => $composableBuilder(
    column: $table.idMeal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeal => $composableBuilder(
    column: $table.strMeal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMealAlternate => $composableBuilder(
    column: $table.strMealAlternate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strCategory => $composableBuilder(
    column: $table.strCategory,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strArea => $composableBuilder(
    column: $table.strArea,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strInstructions => $composableBuilder(
    column: $table.strInstructions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMealThumb => $composableBuilder(
    column: $table.strMealThumb,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strTags => $composableBuilder(
    column: $table.strTags,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strYoutube => $composableBuilder(
    column: $table.strYoutube,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient1 => $composableBuilder(
    column: $table.strIngredient1,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient2 => $composableBuilder(
    column: $table.strIngredient2,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient3 => $composableBuilder(
    column: $table.strIngredient3,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient4 => $composableBuilder(
    column: $table.strIngredient4,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient5 => $composableBuilder(
    column: $table.strIngredient5,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient6 => $composableBuilder(
    column: $table.strIngredient6,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient7 => $composableBuilder(
    column: $table.strIngredient7,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient8 => $composableBuilder(
    column: $table.strIngredient8,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient9 => $composableBuilder(
    column: $table.strIngredient9,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient10 => $composableBuilder(
    column: $table.strIngredient10,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient11 => $composableBuilder(
    column: $table.strIngredient11,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient12 => $composableBuilder(
    column: $table.strIngredient12,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient13 => $composableBuilder(
    column: $table.strIngredient13,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient14 => $composableBuilder(
    column: $table.strIngredient14,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient15 => $composableBuilder(
    column: $table.strIngredient15,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient16 => $composableBuilder(
    column: $table.strIngredient16,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient17 => $composableBuilder(
    column: $table.strIngredient17,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient18 => $composableBuilder(
    column: $table.strIngredient18,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient19 => $composableBuilder(
    column: $table.strIngredient19,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient20 => $composableBuilder(
    column: $table.strIngredient20,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure1 => $composableBuilder(
    column: $table.strMeasure1,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure2 => $composableBuilder(
    column: $table.strMeasure2,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure3 => $composableBuilder(
    column: $table.strMeasure3,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure4 => $composableBuilder(
    column: $table.strMeasure4,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure5 => $composableBuilder(
    column: $table.strMeasure5,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure6 => $composableBuilder(
    column: $table.strMeasure6,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure7 => $composableBuilder(
    column: $table.strMeasure7,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure8 => $composableBuilder(
    column: $table.strMeasure8,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure9 => $composableBuilder(
    column: $table.strMeasure9,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure10 => $composableBuilder(
    column: $table.strMeasure10,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure11 => $composableBuilder(
    column: $table.strMeasure11,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure12 => $composableBuilder(
    column: $table.strMeasure12,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure13 => $composableBuilder(
    column: $table.strMeasure13,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure14 => $composableBuilder(
    column: $table.strMeasure14,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure15 => $composableBuilder(
    column: $table.strMeasure15,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure16 => $composableBuilder(
    column: $table.strMeasure16,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure17 => $composableBuilder(
    column: $table.strMeasure17,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure18 => $composableBuilder(
    column: $table.strMeasure18,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure19 => $composableBuilder(
    column: $table.strMeasure19,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure20 => $composableBuilder(
    column: $table.strMeasure20,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strSource => $composableBuilder(
    column: $table.strSource,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strImageSource => $composableBuilder(
    column: $table.strImageSource,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strCreativeCommonsConfirmed => $composableBuilder(
    column: $table.strCreativeCommonsConfirmed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dateModified => $composableBuilder(
    column: $table.dateModified,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> favoritesRefs(
    Expression<bool> Function($FavoritesFilterComposer f) f,
  ) {
    final $FavoritesFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idMeal,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.mealId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $FavoritesFilterComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $MealsOrderingComposer extends Composer<_$MealifyDatabase, Meals> {
  $MealsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get idMeal => $composableBuilder(
    column: $table.idMeal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeal => $composableBuilder(
    column: $table.strMeal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMealAlternate => $composableBuilder(
    column: $table.strMealAlternate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strCategory => $composableBuilder(
    column: $table.strCategory,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strArea => $composableBuilder(
    column: $table.strArea,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strInstructions => $composableBuilder(
    column: $table.strInstructions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMealThumb => $composableBuilder(
    column: $table.strMealThumb,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strTags => $composableBuilder(
    column: $table.strTags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strYoutube => $composableBuilder(
    column: $table.strYoutube,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient1 => $composableBuilder(
    column: $table.strIngredient1,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient2 => $composableBuilder(
    column: $table.strIngredient2,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient3 => $composableBuilder(
    column: $table.strIngredient3,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient4 => $composableBuilder(
    column: $table.strIngredient4,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient5 => $composableBuilder(
    column: $table.strIngredient5,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient6 => $composableBuilder(
    column: $table.strIngredient6,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient7 => $composableBuilder(
    column: $table.strIngredient7,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient8 => $composableBuilder(
    column: $table.strIngredient8,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient9 => $composableBuilder(
    column: $table.strIngredient9,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient10 => $composableBuilder(
    column: $table.strIngredient10,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient11 => $composableBuilder(
    column: $table.strIngredient11,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient12 => $composableBuilder(
    column: $table.strIngredient12,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient13 => $composableBuilder(
    column: $table.strIngredient13,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient14 => $composableBuilder(
    column: $table.strIngredient14,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient15 => $composableBuilder(
    column: $table.strIngredient15,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient16 => $composableBuilder(
    column: $table.strIngredient16,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient17 => $composableBuilder(
    column: $table.strIngredient17,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient18 => $composableBuilder(
    column: $table.strIngredient18,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient19 => $composableBuilder(
    column: $table.strIngredient19,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient20 => $composableBuilder(
    column: $table.strIngredient20,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure1 => $composableBuilder(
    column: $table.strMeasure1,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure2 => $composableBuilder(
    column: $table.strMeasure2,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure3 => $composableBuilder(
    column: $table.strMeasure3,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure4 => $composableBuilder(
    column: $table.strMeasure4,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure5 => $composableBuilder(
    column: $table.strMeasure5,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure6 => $composableBuilder(
    column: $table.strMeasure6,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure7 => $composableBuilder(
    column: $table.strMeasure7,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure8 => $composableBuilder(
    column: $table.strMeasure8,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure9 => $composableBuilder(
    column: $table.strMeasure9,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure10 => $composableBuilder(
    column: $table.strMeasure10,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure11 => $composableBuilder(
    column: $table.strMeasure11,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure12 => $composableBuilder(
    column: $table.strMeasure12,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure13 => $composableBuilder(
    column: $table.strMeasure13,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure14 => $composableBuilder(
    column: $table.strMeasure14,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure15 => $composableBuilder(
    column: $table.strMeasure15,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure16 => $composableBuilder(
    column: $table.strMeasure16,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure17 => $composableBuilder(
    column: $table.strMeasure17,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure18 => $composableBuilder(
    column: $table.strMeasure18,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure19 => $composableBuilder(
    column: $table.strMeasure19,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure20 => $composableBuilder(
    column: $table.strMeasure20,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strSource => $composableBuilder(
    column: $table.strSource,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strImageSource => $composableBuilder(
    column: $table.strImageSource,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strCreativeCommonsConfirmed => $composableBuilder(
    column: $table.strCreativeCommonsConfirmed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dateModified => $composableBuilder(
    column: $table.dateModified,
    builder: (column) => ColumnOrderings(column),
  );
}

class $MealsAnnotationComposer extends Composer<_$MealifyDatabase, Meals> {
  $MealsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get idMeal =>
      $composableBuilder(column: $table.idMeal, builder: (column) => column);

  GeneratedColumn<String> get strMeal =>
      $composableBuilder(column: $table.strMeal, builder: (column) => column);

  GeneratedColumn<String> get strMealAlternate => $composableBuilder(
    column: $table.strMealAlternate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strCategory => $composableBuilder(
    column: $table.strCategory,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strArea =>
      $composableBuilder(column: $table.strArea, builder: (column) => column);

  GeneratedColumn<String> get strInstructions => $composableBuilder(
    column: $table.strInstructions,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMealThumb => $composableBuilder(
    column: $table.strMealThumb,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strTags =>
      $composableBuilder(column: $table.strTags, builder: (column) => column);

  GeneratedColumn<String> get strYoutube => $composableBuilder(
    column: $table.strYoutube,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient1 => $composableBuilder(
    column: $table.strIngredient1,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient2 => $composableBuilder(
    column: $table.strIngredient2,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient3 => $composableBuilder(
    column: $table.strIngredient3,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient4 => $composableBuilder(
    column: $table.strIngredient4,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient5 => $composableBuilder(
    column: $table.strIngredient5,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient6 => $composableBuilder(
    column: $table.strIngredient6,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient7 => $composableBuilder(
    column: $table.strIngredient7,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient8 => $composableBuilder(
    column: $table.strIngredient8,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient9 => $composableBuilder(
    column: $table.strIngredient9,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient10 => $composableBuilder(
    column: $table.strIngredient10,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient11 => $composableBuilder(
    column: $table.strIngredient11,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient12 => $composableBuilder(
    column: $table.strIngredient12,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient13 => $composableBuilder(
    column: $table.strIngredient13,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient14 => $composableBuilder(
    column: $table.strIngredient14,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient15 => $composableBuilder(
    column: $table.strIngredient15,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient16 => $composableBuilder(
    column: $table.strIngredient16,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient17 => $composableBuilder(
    column: $table.strIngredient17,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient18 => $composableBuilder(
    column: $table.strIngredient18,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient19 => $composableBuilder(
    column: $table.strIngredient19,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient20 => $composableBuilder(
    column: $table.strIngredient20,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure1 => $composableBuilder(
    column: $table.strMeasure1,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure2 => $composableBuilder(
    column: $table.strMeasure2,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure3 => $composableBuilder(
    column: $table.strMeasure3,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure4 => $composableBuilder(
    column: $table.strMeasure4,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure5 => $composableBuilder(
    column: $table.strMeasure5,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure6 => $composableBuilder(
    column: $table.strMeasure6,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure7 => $composableBuilder(
    column: $table.strMeasure7,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure8 => $composableBuilder(
    column: $table.strMeasure8,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure9 => $composableBuilder(
    column: $table.strMeasure9,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure10 => $composableBuilder(
    column: $table.strMeasure10,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure11 => $composableBuilder(
    column: $table.strMeasure11,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure12 => $composableBuilder(
    column: $table.strMeasure12,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure13 => $composableBuilder(
    column: $table.strMeasure13,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure14 => $composableBuilder(
    column: $table.strMeasure14,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure15 => $composableBuilder(
    column: $table.strMeasure15,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure16 => $composableBuilder(
    column: $table.strMeasure16,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure17 => $composableBuilder(
    column: $table.strMeasure17,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure18 => $composableBuilder(
    column: $table.strMeasure18,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure19 => $composableBuilder(
    column: $table.strMeasure19,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure20 => $composableBuilder(
    column: $table.strMeasure20,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strSource =>
      $composableBuilder(column: $table.strSource, builder: (column) => column);

  GeneratedColumn<String> get strImageSource => $composableBuilder(
    column: $table.strImageSource,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strCreativeCommonsConfirmed => $composableBuilder(
    column: $table.strCreativeCommonsConfirmed,
    builder: (column) => column,
  );

  GeneratedColumn<String> get dateModified => $composableBuilder(
    column: $table.dateModified,
    builder: (column) => column,
  );

  Expression<T> favoritesRefs<T extends Object>(
    Expression<T> Function($FavoritesAnnotationComposer a) f,
  ) {
    final $FavoritesAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idMeal,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.mealId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $FavoritesAnnotationComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $MealsTableManager
    extends
        RootTableManager<
          _$MealifyDatabase,
          Meals,
          Meal,
          $MealsFilterComposer,
          $MealsOrderingComposer,
          $MealsAnnotationComposer,
          $MealsCreateCompanionBuilder,
          $MealsUpdateCompanionBuilder,
          (Meal, $MealsReferences),
          Meal,
          PrefetchHooks Function({bool favoritesRefs})
        > {
  $MealsTableManager(_$MealifyDatabase db, Meals table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $MealsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $MealsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $MealsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> idMeal = const Value.absent(),
                Value<String?> strMeal = const Value.absent(),
                Value<String?> strMealAlternate = const Value.absent(),
                Value<String?> strCategory = const Value.absent(),
                Value<String?> strArea = const Value.absent(),
                Value<String?> strInstructions = const Value.absent(),
                Value<String?> strMealThumb = const Value.absent(),
                Value<String?> strTags = const Value.absent(),
                Value<String?> strYoutube = const Value.absent(),
                Value<String?> strIngredient1 = const Value.absent(),
                Value<String?> strIngredient2 = const Value.absent(),
                Value<String?> strIngredient3 = const Value.absent(),
                Value<String?> strIngredient4 = const Value.absent(),
                Value<String?> strIngredient5 = const Value.absent(),
                Value<String?> strIngredient6 = const Value.absent(),
                Value<String?> strIngredient7 = const Value.absent(),
                Value<String?> strIngredient8 = const Value.absent(),
                Value<String?> strIngredient9 = const Value.absent(),
                Value<String?> strIngredient10 = const Value.absent(),
                Value<String?> strIngredient11 = const Value.absent(),
                Value<String?> strIngredient12 = const Value.absent(),
                Value<String?> strIngredient13 = const Value.absent(),
                Value<String?> strIngredient14 = const Value.absent(),
                Value<String?> strIngredient15 = const Value.absent(),
                Value<String?> strIngredient16 = const Value.absent(),
                Value<String?> strIngredient17 = const Value.absent(),
                Value<String?> strIngredient18 = const Value.absent(),
                Value<String?> strIngredient19 = const Value.absent(),
                Value<String?> strIngredient20 = const Value.absent(),
                Value<String?> strMeasure1 = const Value.absent(),
                Value<String?> strMeasure2 = const Value.absent(),
                Value<String?> strMeasure3 = const Value.absent(),
                Value<String?> strMeasure4 = const Value.absent(),
                Value<String?> strMeasure5 = const Value.absent(),
                Value<String?> strMeasure6 = const Value.absent(),
                Value<String?> strMeasure7 = const Value.absent(),
                Value<String?> strMeasure8 = const Value.absent(),
                Value<String?> strMeasure9 = const Value.absent(),
                Value<String?> strMeasure10 = const Value.absent(),
                Value<String?> strMeasure11 = const Value.absent(),
                Value<String?> strMeasure12 = const Value.absent(),
                Value<String?> strMeasure13 = const Value.absent(),
                Value<String?> strMeasure14 = const Value.absent(),
                Value<String?> strMeasure15 = const Value.absent(),
                Value<String?> strMeasure16 = const Value.absent(),
                Value<String?> strMeasure17 = const Value.absent(),
                Value<String?> strMeasure18 = const Value.absent(),
                Value<String?> strMeasure19 = const Value.absent(),
                Value<String?> strMeasure20 = const Value.absent(),
                Value<String?> strSource = const Value.absent(),
                Value<String?> strImageSource = const Value.absent(),
                Value<String?> strCreativeCommonsConfirmed =
                    const Value.absent(),
                Value<String?> dateModified = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MealsCompanion(
                idMeal: idMeal,
                strMeal: strMeal,
                strMealAlternate: strMealAlternate,
                strCategory: strCategory,
                strArea: strArea,
                strInstructions: strInstructions,
                strMealThumb: strMealThumb,
                strTags: strTags,
                strYoutube: strYoutube,
                strIngredient1: strIngredient1,
                strIngredient2: strIngredient2,
                strIngredient3: strIngredient3,
                strIngredient4: strIngredient4,
                strIngredient5: strIngredient5,
                strIngredient6: strIngredient6,
                strIngredient7: strIngredient7,
                strIngredient8: strIngredient8,
                strIngredient9: strIngredient9,
                strIngredient10: strIngredient10,
                strIngredient11: strIngredient11,
                strIngredient12: strIngredient12,
                strIngredient13: strIngredient13,
                strIngredient14: strIngredient14,
                strIngredient15: strIngredient15,
                strIngredient16: strIngredient16,
                strIngredient17: strIngredient17,
                strIngredient18: strIngredient18,
                strIngredient19: strIngredient19,
                strIngredient20: strIngredient20,
                strMeasure1: strMeasure1,
                strMeasure2: strMeasure2,
                strMeasure3: strMeasure3,
                strMeasure4: strMeasure4,
                strMeasure5: strMeasure5,
                strMeasure6: strMeasure6,
                strMeasure7: strMeasure7,
                strMeasure8: strMeasure8,
                strMeasure9: strMeasure9,
                strMeasure10: strMeasure10,
                strMeasure11: strMeasure11,
                strMeasure12: strMeasure12,
                strMeasure13: strMeasure13,
                strMeasure14: strMeasure14,
                strMeasure15: strMeasure15,
                strMeasure16: strMeasure16,
                strMeasure17: strMeasure17,
                strMeasure18: strMeasure18,
                strMeasure19: strMeasure19,
                strMeasure20: strMeasure20,
                strSource: strSource,
                strImageSource: strImageSource,
                strCreativeCommonsConfirmed: strCreativeCommonsConfirmed,
                dateModified: dateModified,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String idMeal,
                Value<String?> strMeal = const Value.absent(),
                Value<String?> strMealAlternate = const Value.absent(),
                Value<String?> strCategory = const Value.absent(),
                Value<String?> strArea = const Value.absent(),
                Value<String?> strInstructions = const Value.absent(),
                Value<String?> strMealThumb = const Value.absent(),
                Value<String?> strTags = const Value.absent(),
                Value<String?> strYoutube = const Value.absent(),
                Value<String?> strIngredient1 = const Value.absent(),
                Value<String?> strIngredient2 = const Value.absent(),
                Value<String?> strIngredient3 = const Value.absent(),
                Value<String?> strIngredient4 = const Value.absent(),
                Value<String?> strIngredient5 = const Value.absent(),
                Value<String?> strIngredient6 = const Value.absent(),
                Value<String?> strIngredient7 = const Value.absent(),
                Value<String?> strIngredient8 = const Value.absent(),
                Value<String?> strIngredient9 = const Value.absent(),
                Value<String?> strIngredient10 = const Value.absent(),
                Value<String?> strIngredient11 = const Value.absent(),
                Value<String?> strIngredient12 = const Value.absent(),
                Value<String?> strIngredient13 = const Value.absent(),
                Value<String?> strIngredient14 = const Value.absent(),
                Value<String?> strIngredient15 = const Value.absent(),
                Value<String?> strIngredient16 = const Value.absent(),
                Value<String?> strIngredient17 = const Value.absent(),
                Value<String?> strIngredient18 = const Value.absent(),
                Value<String?> strIngredient19 = const Value.absent(),
                Value<String?> strIngredient20 = const Value.absent(),
                Value<String?> strMeasure1 = const Value.absent(),
                Value<String?> strMeasure2 = const Value.absent(),
                Value<String?> strMeasure3 = const Value.absent(),
                Value<String?> strMeasure4 = const Value.absent(),
                Value<String?> strMeasure5 = const Value.absent(),
                Value<String?> strMeasure6 = const Value.absent(),
                Value<String?> strMeasure7 = const Value.absent(),
                Value<String?> strMeasure8 = const Value.absent(),
                Value<String?> strMeasure9 = const Value.absent(),
                Value<String?> strMeasure10 = const Value.absent(),
                Value<String?> strMeasure11 = const Value.absent(),
                Value<String?> strMeasure12 = const Value.absent(),
                Value<String?> strMeasure13 = const Value.absent(),
                Value<String?> strMeasure14 = const Value.absent(),
                Value<String?> strMeasure15 = const Value.absent(),
                Value<String?> strMeasure16 = const Value.absent(),
                Value<String?> strMeasure17 = const Value.absent(),
                Value<String?> strMeasure18 = const Value.absent(),
                Value<String?> strMeasure19 = const Value.absent(),
                Value<String?> strMeasure20 = const Value.absent(),
                Value<String?> strSource = const Value.absent(),
                Value<String?> strImageSource = const Value.absent(),
                Value<String?> strCreativeCommonsConfirmed =
                    const Value.absent(),
                Value<String?> dateModified = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MealsCompanion.insert(
                idMeal: idMeal,
                strMeal: strMeal,
                strMealAlternate: strMealAlternate,
                strCategory: strCategory,
                strArea: strArea,
                strInstructions: strInstructions,
                strMealThumb: strMealThumb,
                strTags: strTags,
                strYoutube: strYoutube,
                strIngredient1: strIngredient1,
                strIngredient2: strIngredient2,
                strIngredient3: strIngredient3,
                strIngredient4: strIngredient4,
                strIngredient5: strIngredient5,
                strIngredient6: strIngredient6,
                strIngredient7: strIngredient7,
                strIngredient8: strIngredient8,
                strIngredient9: strIngredient9,
                strIngredient10: strIngredient10,
                strIngredient11: strIngredient11,
                strIngredient12: strIngredient12,
                strIngredient13: strIngredient13,
                strIngredient14: strIngredient14,
                strIngredient15: strIngredient15,
                strIngredient16: strIngredient16,
                strIngredient17: strIngredient17,
                strIngredient18: strIngredient18,
                strIngredient19: strIngredient19,
                strIngredient20: strIngredient20,
                strMeasure1: strMeasure1,
                strMeasure2: strMeasure2,
                strMeasure3: strMeasure3,
                strMeasure4: strMeasure4,
                strMeasure5: strMeasure5,
                strMeasure6: strMeasure6,
                strMeasure7: strMeasure7,
                strMeasure8: strMeasure8,
                strMeasure9: strMeasure9,
                strMeasure10: strMeasure10,
                strMeasure11: strMeasure11,
                strMeasure12: strMeasure12,
                strMeasure13: strMeasure13,
                strMeasure14: strMeasure14,
                strMeasure15: strMeasure15,
                strMeasure16: strMeasure16,
                strMeasure17: strMeasure17,
                strMeasure18: strMeasure18,
                strMeasure19: strMeasure19,
                strMeasure20: strMeasure20,
                strSource: strSource,
                strImageSource: strImageSource,
                strCreativeCommonsConfirmed: strCreativeCommonsConfirmed,
                dateModified: dateModified,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), $MealsReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({favoritesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (favoritesRefs) db.favorites],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (favoritesRefs)
                    await $_getPrefetchedData<Meal, Meals, Favorite>(
                      currentTable: table,
                      referencedTable: $MealsReferences._favoritesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $MealsReferences(db, table, p0).favoritesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.mealId == item.idMeal),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $MealsProcessedTableManager =
    ProcessedTableManager<
      _$MealifyDatabase,
      Meals,
      Meal,
      $MealsFilterComposer,
      $MealsOrderingComposer,
      $MealsAnnotationComposer,
      $MealsCreateCompanionBuilder,
      $MealsUpdateCompanionBuilder,
      (Meal, $MealsReferences),
      Meal,
      PrefetchHooks Function({bool favoritesRefs})
    >;
typedef $DrinksCreateCompanionBuilder =
    DrinksCompanion Function({
      required String idDrink,
      Value<String?> strDrink,
      Value<String?> strDrinkAlternate,
      Value<String?> strTags,
      Value<String?> strVideo,
      Value<String?> strCategory,
      Value<String?> strIba,
      Value<String?> strAlcoholic,
      Value<String?> strGlass,
      Value<String?> strInstructions,
      Value<String?> strInstructionsEs,
      Value<String?> strInstructionsDe,
      Value<String?> strInstructionsFr,
      Value<String?> strInstructionsIt,
      Value<String?> strInstructionsZhHans,
      Value<String?> strInstructionsZhHant,
      Value<String?> strDrinkThumb,
      Value<String?> strIngredient1,
      Value<String?> strIngredient2,
      Value<String?> strIngredient3,
      Value<String?> strIngredient4,
      Value<String?> strIngredient5,
      Value<String?> strIngredient6,
      Value<String?> strIngredient7,
      Value<String?> strIngredient8,
      Value<String?> strIngredient9,
      Value<String?> strIngredient10,
      Value<String?> strIngredient11,
      Value<String?> strIngredient12,
      Value<String?> strIngredient13,
      Value<String?> strIngredient14,
      Value<String?> strIngredient15,
      Value<String?> strMeasure1,
      Value<String?> strMeasure2,
      Value<String?> strMeasure3,
      Value<String?> strMeasure4,
      Value<String?> strMeasure5,
      Value<String?> strMeasure6,
      Value<String?> strMeasure7,
      Value<String?> strMeasure8,
      Value<String?> strMeasure9,
      Value<String?> strMeasure10,
      Value<String?> strMeasure11,
      Value<String?> strMeasure12,
      Value<String?> strMeasure13,
      Value<String?> strMeasure14,
      Value<String?> strMeasure15,
      Value<String?> strImageSource,
      Value<String?> strImageAttribution,
      Value<String?> strCreativeCommonsConfirmed,
      Value<String?> dateModified,
      Value<int> rowid,
    });
typedef $DrinksUpdateCompanionBuilder =
    DrinksCompanion Function({
      Value<String> idDrink,
      Value<String?> strDrink,
      Value<String?> strDrinkAlternate,
      Value<String?> strTags,
      Value<String?> strVideo,
      Value<String?> strCategory,
      Value<String?> strIba,
      Value<String?> strAlcoholic,
      Value<String?> strGlass,
      Value<String?> strInstructions,
      Value<String?> strInstructionsEs,
      Value<String?> strInstructionsDe,
      Value<String?> strInstructionsFr,
      Value<String?> strInstructionsIt,
      Value<String?> strInstructionsZhHans,
      Value<String?> strInstructionsZhHant,
      Value<String?> strDrinkThumb,
      Value<String?> strIngredient1,
      Value<String?> strIngredient2,
      Value<String?> strIngredient3,
      Value<String?> strIngredient4,
      Value<String?> strIngredient5,
      Value<String?> strIngredient6,
      Value<String?> strIngredient7,
      Value<String?> strIngredient8,
      Value<String?> strIngredient9,
      Value<String?> strIngredient10,
      Value<String?> strIngredient11,
      Value<String?> strIngredient12,
      Value<String?> strIngredient13,
      Value<String?> strIngredient14,
      Value<String?> strIngredient15,
      Value<String?> strMeasure1,
      Value<String?> strMeasure2,
      Value<String?> strMeasure3,
      Value<String?> strMeasure4,
      Value<String?> strMeasure5,
      Value<String?> strMeasure6,
      Value<String?> strMeasure7,
      Value<String?> strMeasure8,
      Value<String?> strMeasure9,
      Value<String?> strMeasure10,
      Value<String?> strMeasure11,
      Value<String?> strMeasure12,
      Value<String?> strMeasure13,
      Value<String?> strMeasure14,
      Value<String?> strMeasure15,
      Value<String?> strImageSource,
      Value<String?> strImageAttribution,
      Value<String?> strCreativeCommonsConfirmed,
      Value<String?> dateModified,
      Value<int> rowid,
    });

final class $DrinksReferences
    extends BaseReferences<_$MealifyDatabase, Drinks, Drink> {
  $DrinksReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<Favorites, List<Favorite>> _favoritesRefsTable(
    _$MealifyDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.favorites,
    aliasName: $_aliasNameGenerator(db.drinks.idDrink, db.favorites.drinkId),
  );

  $FavoritesProcessedTableManager get favoritesRefs {
    final manager = $FavoritesTableManager($_db, $_db.favorites).filter(
      (f) => f.drinkId.idDrink.sqlEquals($_itemColumn<String>('id_drink')!),
    );

    final cache = $_typedResult.readTableOrNull(_favoritesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $DrinksFilterComposer extends Composer<_$MealifyDatabase, Drinks> {
  $DrinksFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get idDrink => $composableBuilder(
    column: $table.idDrink,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strDrink => $composableBuilder(
    column: $table.strDrink,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strDrinkAlternate => $composableBuilder(
    column: $table.strDrinkAlternate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strTags => $composableBuilder(
    column: $table.strTags,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strVideo => $composableBuilder(
    column: $table.strVideo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strCategory => $composableBuilder(
    column: $table.strCategory,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIba => $composableBuilder(
    column: $table.strIba,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strAlcoholic => $composableBuilder(
    column: $table.strAlcoholic,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strGlass => $composableBuilder(
    column: $table.strGlass,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strInstructions => $composableBuilder(
    column: $table.strInstructions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strInstructionsEs => $composableBuilder(
    column: $table.strInstructionsEs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strInstructionsDe => $composableBuilder(
    column: $table.strInstructionsDe,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strInstructionsFr => $composableBuilder(
    column: $table.strInstructionsFr,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strInstructionsIt => $composableBuilder(
    column: $table.strInstructionsIt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strInstructionsZhHans => $composableBuilder(
    column: $table.strInstructionsZhHans,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strInstructionsZhHant => $composableBuilder(
    column: $table.strInstructionsZhHant,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strDrinkThumb => $composableBuilder(
    column: $table.strDrinkThumb,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient1 => $composableBuilder(
    column: $table.strIngredient1,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient2 => $composableBuilder(
    column: $table.strIngredient2,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient3 => $composableBuilder(
    column: $table.strIngredient3,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient4 => $composableBuilder(
    column: $table.strIngredient4,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient5 => $composableBuilder(
    column: $table.strIngredient5,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient6 => $composableBuilder(
    column: $table.strIngredient6,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient7 => $composableBuilder(
    column: $table.strIngredient7,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient8 => $composableBuilder(
    column: $table.strIngredient8,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient9 => $composableBuilder(
    column: $table.strIngredient9,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient10 => $composableBuilder(
    column: $table.strIngredient10,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient11 => $composableBuilder(
    column: $table.strIngredient11,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient12 => $composableBuilder(
    column: $table.strIngredient12,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient13 => $composableBuilder(
    column: $table.strIngredient13,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient14 => $composableBuilder(
    column: $table.strIngredient14,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strIngredient15 => $composableBuilder(
    column: $table.strIngredient15,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure1 => $composableBuilder(
    column: $table.strMeasure1,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure2 => $composableBuilder(
    column: $table.strMeasure2,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure3 => $composableBuilder(
    column: $table.strMeasure3,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure4 => $composableBuilder(
    column: $table.strMeasure4,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure5 => $composableBuilder(
    column: $table.strMeasure5,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure6 => $composableBuilder(
    column: $table.strMeasure6,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure7 => $composableBuilder(
    column: $table.strMeasure7,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure8 => $composableBuilder(
    column: $table.strMeasure8,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure9 => $composableBuilder(
    column: $table.strMeasure9,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure10 => $composableBuilder(
    column: $table.strMeasure10,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure11 => $composableBuilder(
    column: $table.strMeasure11,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure12 => $composableBuilder(
    column: $table.strMeasure12,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure13 => $composableBuilder(
    column: $table.strMeasure13,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure14 => $composableBuilder(
    column: $table.strMeasure14,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strMeasure15 => $composableBuilder(
    column: $table.strMeasure15,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strImageSource => $composableBuilder(
    column: $table.strImageSource,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strImageAttribution => $composableBuilder(
    column: $table.strImageAttribution,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strCreativeCommonsConfirmed => $composableBuilder(
    column: $table.strCreativeCommonsConfirmed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dateModified => $composableBuilder(
    column: $table.dateModified,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> favoritesRefs(
    Expression<bool> Function($FavoritesFilterComposer f) f,
  ) {
    final $FavoritesFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idDrink,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.drinkId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $FavoritesFilterComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $DrinksOrderingComposer extends Composer<_$MealifyDatabase, Drinks> {
  $DrinksOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get idDrink => $composableBuilder(
    column: $table.idDrink,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strDrink => $composableBuilder(
    column: $table.strDrink,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strDrinkAlternate => $composableBuilder(
    column: $table.strDrinkAlternate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strTags => $composableBuilder(
    column: $table.strTags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strVideo => $composableBuilder(
    column: $table.strVideo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strCategory => $composableBuilder(
    column: $table.strCategory,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIba => $composableBuilder(
    column: $table.strIba,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strAlcoholic => $composableBuilder(
    column: $table.strAlcoholic,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strGlass => $composableBuilder(
    column: $table.strGlass,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strInstructions => $composableBuilder(
    column: $table.strInstructions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strInstructionsEs => $composableBuilder(
    column: $table.strInstructionsEs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strInstructionsDe => $composableBuilder(
    column: $table.strInstructionsDe,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strInstructionsFr => $composableBuilder(
    column: $table.strInstructionsFr,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strInstructionsIt => $composableBuilder(
    column: $table.strInstructionsIt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strInstructionsZhHans => $composableBuilder(
    column: $table.strInstructionsZhHans,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strInstructionsZhHant => $composableBuilder(
    column: $table.strInstructionsZhHant,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strDrinkThumb => $composableBuilder(
    column: $table.strDrinkThumb,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient1 => $composableBuilder(
    column: $table.strIngredient1,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient2 => $composableBuilder(
    column: $table.strIngredient2,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient3 => $composableBuilder(
    column: $table.strIngredient3,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient4 => $composableBuilder(
    column: $table.strIngredient4,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient5 => $composableBuilder(
    column: $table.strIngredient5,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient6 => $composableBuilder(
    column: $table.strIngredient6,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient7 => $composableBuilder(
    column: $table.strIngredient7,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient8 => $composableBuilder(
    column: $table.strIngredient8,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient9 => $composableBuilder(
    column: $table.strIngredient9,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient10 => $composableBuilder(
    column: $table.strIngredient10,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient11 => $composableBuilder(
    column: $table.strIngredient11,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient12 => $composableBuilder(
    column: $table.strIngredient12,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient13 => $composableBuilder(
    column: $table.strIngredient13,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient14 => $composableBuilder(
    column: $table.strIngredient14,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strIngredient15 => $composableBuilder(
    column: $table.strIngredient15,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure1 => $composableBuilder(
    column: $table.strMeasure1,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure2 => $composableBuilder(
    column: $table.strMeasure2,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure3 => $composableBuilder(
    column: $table.strMeasure3,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure4 => $composableBuilder(
    column: $table.strMeasure4,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure5 => $composableBuilder(
    column: $table.strMeasure5,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure6 => $composableBuilder(
    column: $table.strMeasure6,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure7 => $composableBuilder(
    column: $table.strMeasure7,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure8 => $composableBuilder(
    column: $table.strMeasure8,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure9 => $composableBuilder(
    column: $table.strMeasure9,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure10 => $composableBuilder(
    column: $table.strMeasure10,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure11 => $composableBuilder(
    column: $table.strMeasure11,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure12 => $composableBuilder(
    column: $table.strMeasure12,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure13 => $composableBuilder(
    column: $table.strMeasure13,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure14 => $composableBuilder(
    column: $table.strMeasure14,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strMeasure15 => $composableBuilder(
    column: $table.strMeasure15,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strImageSource => $composableBuilder(
    column: $table.strImageSource,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strImageAttribution => $composableBuilder(
    column: $table.strImageAttribution,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strCreativeCommonsConfirmed => $composableBuilder(
    column: $table.strCreativeCommonsConfirmed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dateModified => $composableBuilder(
    column: $table.dateModified,
    builder: (column) => ColumnOrderings(column),
  );
}

class $DrinksAnnotationComposer extends Composer<_$MealifyDatabase, Drinks> {
  $DrinksAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get idDrink =>
      $composableBuilder(column: $table.idDrink, builder: (column) => column);

  GeneratedColumn<String> get strDrink =>
      $composableBuilder(column: $table.strDrink, builder: (column) => column);

  GeneratedColumn<String> get strDrinkAlternate => $composableBuilder(
    column: $table.strDrinkAlternate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strTags =>
      $composableBuilder(column: $table.strTags, builder: (column) => column);

  GeneratedColumn<String> get strVideo =>
      $composableBuilder(column: $table.strVideo, builder: (column) => column);

  GeneratedColumn<String> get strCategory => $composableBuilder(
    column: $table.strCategory,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIba =>
      $composableBuilder(column: $table.strIba, builder: (column) => column);

  GeneratedColumn<String> get strAlcoholic => $composableBuilder(
    column: $table.strAlcoholic,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strGlass =>
      $composableBuilder(column: $table.strGlass, builder: (column) => column);

  GeneratedColumn<String> get strInstructions => $composableBuilder(
    column: $table.strInstructions,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strInstructionsEs => $composableBuilder(
    column: $table.strInstructionsEs,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strInstructionsDe => $composableBuilder(
    column: $table.strInstructionsDe,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strInstructionsFr => $composableBuilder(
    column: $table.strInstructionsFr,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strInstructionsIt => $composableBuilder(
    column: $table.strInstructionsIt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strInstructionsZhHans => $composableBuilder(
    column: $table.strInstructionsZhHans,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strInstructionsZhHant => $composableBuilder(
    column: $table.strInstructionsZhHant,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strDrinkThumb => $composableBuilder(
    column: $table.strDrinkThumb,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient1 => $composableBuilder(
    column: $table.strIngredient1,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient2 => $composableBuilder(
    column: $table.strIngredient2,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient3 => $composableBuilder(
    column: $table.strIngredient3,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient4 => $composableBuilder(
    column: $table.strIngredient4,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient5 => $composableBuilder(
    column: $table.strIngredient5,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient6 => $composableBuilder(
    column: $table.strIngredient6,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient7 => $composableBuilder(
    column: $table.strIngredient7,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient8 => $composableBuilder(
    column: $table.strIngredient8,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient9 => $composableBuilder(
    column: $table.strIngredient9,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient10 => $composableBuilder(
    column: $table.strIngredient10,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient11 => $composableBuilder(
    column: $table.strIngredient11,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient12 => $composableBuilder(
    column: $table.strIngredient12,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient13 => $composableBuilder(
    column: $table.strIngredient13,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient14 => $composableBuilder(
    column: $table.strIngredient14,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strIngredient15 => $composableBuilder(
    column: $table.strIngredient15,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure1 => $composableBuilder(
    column: $table.strMeasure1,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure2 => $composableBuilder(
    column: $table.strMeasure2,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure3 => $composableBuilder(
    column: $table.strMeasure3,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure4 => $composableBuilder(
    column: $table.strMeasure4,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure5 => $composableBuilder(
    column: $table.strMeasure5,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure6 => $composableBuilder(
    column: $table.strMeasure6,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure7 => $composableBuilder(
    column: $table.strMeasure7,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure8 => $composableBuilder(
    column: $table.strMeasure8,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure9 => $composableBuilder(
    column: $table.strMeasure9,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure10 => $composableBuilder(
    column: $table.strMeasure10,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure11 => $composableBuilder(
    column: $table.strMeasure11,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure12 => $composableBuilder(
    column: $table.strMeasure12,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure13 => $composableBuilder(
    column: $table.strMeasure13,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure14 => $composableBuilder(
    column: $table.strMeasure14,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strMeasure15 => $composableBuilder(
    column: $table.strMeasure15,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strImageSource => $composableBuilder(
    column: $table.strImageSource,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strImageAttribution => $composableBuilder(
    column: $table.strImageAttribution,
    builder: (column) => column,
  );

  GeneratedColumn<String> get strCreativeCommonsConfirmed => $composableBuilder(
    column: $table.strCreativeCommonsConfirmed,
    builder: (column) => column,
  );

  GeneratedColumn<String> get dateModified => $composableBuilder(
    column: $table.dateModified,
    builder: (column) => column,
  );

  Expression<T> favoritesRefs<T extends Object>(
    Expression<T> Function($FavoritesAnnotationComposer a) f,
  ) {
    final $FavoritesAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idDrink,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.drinkId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $FavoritesAnnotationComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $DrinksTableManager
    extends
        RootTableManager<
          _$MealifyDatabase,
          Drinks,
          Drink,
          $DrinksFilterComposer,
          $DrinksOrderingComposer,
          $DrinksAnnotationComposer,
          $DrinksCreateCompanionBuilder,
          $DrinksUpdateCompanionBuilder,
          (Drink, $DrinksReferences),
          Drink,
          PrefetchHooks Function({bool favoritesRefs})
        > {
  $DrinksTableManager(_$MealifyDatabase db, Drinks table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $DrinksFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $DrinksOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $DrinksAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> idDrink = const Value.absent(),
                Value<String?> strDrink = const Value.absent(),
                Value<String?> strDrinkAlternate = const Value.absent(),
                Value<String?> strTags = const Value.absent(),
                Value<String?> strVideo = const Value.absent(),
                Value<String?> strCategory = const Value.absent(),
                Value<String?> strIba = const Value.absent(),
                Value<String?> strAlcoholic = const Value.absent(),
                Value<String?> strGlass = const Value.absent(),
                Value<String?> strInstructions = const Value.absent(),
                Value<String?> strInstructionsEs = const Value.absent(),
                Value<String?> strInstructionsDe = const Value.absent(),
                Value<String?> strInstructionsFr = const Value.absent(),
                Value<String?> strInstructionsIt = const Value.absent(),
                Value<String?> strInstructionsZhHans = const Value.absent(),
                Value<String?> strInstructionsZhHant = const Value.absent(),
                Value<String?> strDrinkThumb = const Value.absent(),
                Value<String?> strIngredient1 = const Value.absent(),
                Value<String?> strIngredient2 = const Value.absent(),
                Value<String?> strIngredient3 = const Value.absent(),
                Value<String?> strIngredient4 = const Value.absent(),
                Value<String?> strIngredient5 = const Value.absent(),
                Value<String?> strIngredient6 = const Value.absent(),
                Value<String?> strIngredient7 = const Value.absent(),
                Value<String?> strIngredient8 = const Value.absent(),
                Value<String?> strIngredient9 = const Value.absent(),
                Value<String?> strIngredient10 = const Value.absent(),
                Value<String?> strIngredient11 = const Value.absent(),
                Value<String?> strIngredient12 = const Value.absent(),
                Value<String?> strIngredient13 = const Value.absent(),
                Value<String?> strIngredient14 = const Value.absent(),
                Value<String?> strIngredient15 = const Value.absent(),
                Value<String?> strMeasure1 = const Value.absent(),
                Value<String?> strMeasure2 = const Value.absent(),
                Value<String?> strMeasure3 = const Value.absent(),
                Value<String?> strMeasure4 = const Value.absent(),
                Value<String?> strMeasure5 = const Value.absent(),
                Value<String?> strMeasure6 = const Value.absent(),
                Value<String?> strMeasure7 = const Value.absent(),
                Value<String?> strMeasure8 = const Value.absent(),
                Value<String?> strMeasure9 = const Value.absent(),
                Value<String?> strMeasure10 = const Value.absent(),
                Value<String?> strMeasure11 = const Value.absent(),
                Value<String?> strMeasure12 = const Value.absent(),
                Value<String?> strMeasure13 = const Value.absent(),
                Value<String?> strMeasure14 = const Value.absent(),
                Value<String?> strMeasure15 = const Value.absent(),
                Value<String?> strImageSource = const Value.absent(),
                Value<String?> strImageAttribution = const Value.absent(),
                Value<String?> strCreativeCommonsConfirmed =
                    const Value.absent(),
                Value<String?> dateModified = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DrinksCompanion(
                idDrink: idDrink,
                strDrink: strDrink,
                strDrinkAlternate: strDrinkAlternate,
                strTags: strTags,
                strVideo: strVideo,
                strCategory: strCategory,
                strIba: strIba,
                strAlcoholic: strAlcoholic,
                strGlass: strGlass,
                strInstructions: strInstructions,
                strInstructionsEs: strInstructionsEs,
                strInstructionsDe: strInstructionsDe,
                strInstructionsFr: strInstructionsFr,
                strInstructionsIt: strInstructionsIt,
                strInstructionsZhHans: strInstructionsZhHans,
                strInstructionsZhHant: strInstructionsZhHant,
                strDrinkThumb: strDrinkThumb,
                strIngredient1: strIngredient1,
                strIngredient2: strIngredient2,
                strIngredient3: strIngredient3,
                strIngredient4: strIngredient4,
                strIngredient5: strIngredient5,
                strIngredient6: strIngredient6,
                strIngredient7: strIngredient7,
                strIngredient8: strIngredient8,
                strIngredient9: strIngredient9,
                strIngredient10: strIngredient10,
                strIngredient11: strIngredient11,
                strIngredient12: strIngredient12,
                strIngredient13: strIngredient13,
                strIngredient14: strIngredient14,
                strIngredient15: strIngredient15,
                strMeasure1: strMeasure1,
                strMeasure2: strMeasure2,
                strMeasure3: strMeasure3,
                strMeasure4: strMeasure4,
                strMeasure5: strMeasure5,
                strMeasure6: strMeasure6,
                strMeasure7: strMeasure7,
                strMeasure8: strMeasure8,
                strMeasure9: strMeasure9,
                strMeasure10: strMeasure10,
                strMeasure11: strMeasure11,
                strMeasure12: strMeasure12,
                strMeasure13: strMeasure13,
                strMeasure14: strMeasure14,
                strMeasure15: strMeasure15,
                strImageSource: strImageSource,
                strImageAttribution: strImageAttribution,
                strCreativeCommonsConfirmed: strCreativeCommonsConfirmed,
                dateModified: dateModified,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String idDrink,
                Value<String?> strDrink = const Value.absent(),
                Value<String?> strDrinkAlternate = const Value.absent(),
                Value<String?> strTags = const Value.absent(),
                Value<String?> strVideo = const Value.absent(),
                Value<String?> strCategory = const Value.absent(),
                Value<String?> strIba = const Value.absent(),
                Value<String?> strAlcoholic = const Value.absent(),
                Value<String?> strGlass = const Value.absent(),
                Value<String?> strInstructions = const Value.absent(),
                Value<String?> strInstructionsEs = const Value.absent(),
                Value<String?> strInstructionsDe = const Value.absent(),
                Value<String?> strInstructionsFr = const Value.absent(),
                Value<String?> strInstructionsIt = const Value.absent(),
                Value<String?> strInstructionsZhHans = const Value.absent(),
                Value<String?> strInstructionsZhHant = const Value.absent(),
                Value<String?> strDrinkThumb = const Value.absent(),
                Value<String?> strIngredient1 = const Value.absent(),
                Value<String?> strIngredient2 = const Value.absent(),
                Value<String?> strIngredient3 = const Value.absent(),
                Value<String?> strIngredient4 = const Value.absent(),
                Value<String?> strIngredient5 = const Value.absent(),
                Value<String?> strIngredient6 = const Value.absent(),
                Value<String?> strIngredient7 = const Value.absent(),
                Value<String?> strIngredient8 = const Value.absent(),
                Value<String?> strIngredient9 = const Value.absent(),
                Value<String?> strIngredient10 = const Value.absent(),
                Value<String?> strIngredient11 = const Value.absent(),
                Value<String?> strIngredient12 = const Value.absent(),
                Value<String?> strIngredient13 = const Value.absent(),
                Value<String?> strIngredient14 = const Value.absent(),
                Value<String?> strIngredient15 = const Value.absent(),
                Value<String?> strMeasure1 = const Value.absent(),
                Value<String?> strMeasure2 = const Value.absent(),
                Value<String?> strMeasure3 = const Value.absent(),
                Value<String?> strMeasure4 = const Value.absent(),
                Value<String?> strMeasure5 = const Value.absent(),
                Value<String?> strMeasure6 = const Value.absent(),
                Value<String?> strMeasure7 = const Value.absent(),
                Value<String?> strMeasure8 = const Value.absent(),
                Value<String?> strMeasure9 = const Value.absent(),
                Value<String?> strMeasure10 = const Value.absent(),
                Value<String?> strMeasure11 = const Value.absent(),
                Value<String?> strMeasure12 = const Value.absent(),
                Value<String?> strMeasure13 = const Value.absent(),
                Value<String?> strMeasure14 = const Value.absent(),
                Value<String?> strMeasure15 = const Value.absent(),
                Value<String?> strImageSource = const Value.absent(),
                Value<String?> strImageAttribution = const Value.absent(),
                Value<String?> strCreativeCommonsConfirmed =
                    const Value.absent(),
                Value<String?> dateModified = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DrinksCompanion.insert(
                idDrink: idDrink,
                strDrink: strDrink,
                strDrinkAlternate: strDrinkAlternate,
                strTags: strTags,
                strVideo: strVideo,
                strCategory: strCategory,
                strIba: strIba,
                strAlcoholic: strAlcoholic,
                strGlass: strGlass,
                strInstructions: strInstructions,
                strInstructionsEs: strInstructionsEs,
                strInstructionsDe: strInstructionsDe,
                strInstructionsFr: strInstructionsFr,
                strInstructionsIt: strInstructionsIt,
                strInstructionsZhHans: strInstructionsZhHans,
                strInstructionsZhHant: strInstructionsZhHant,
                strDrinkThumb: strDrinkThumb,
                strIngredient1: strIngredient1,
                strIngredient2: strIngredient2,
                strIngredient3: strIngredient3,
                strIngredient4: strIngredient4,
                strIngredient5: strIngredient5,
                strIngredient6: strIngredient6,
                strIngredient7: strIngredient7,
                strIngredient8: strIngredient8,
                strIngredient9: strIngredient9,
                strIngredient10: strIngredient10,
                strIngredient11: strIngredient11,
                strIngredient12: strIngredient12,
                strIngredient13: strIngredient13,
                strIngredient14: strIngredient14,
                strIngredient15: strIngredient15,
                strMeasure1: strMeasure1,
                strMeasure2: strMeasure2,
                strMeasure3: strMeasure3,
                strMeasure4: strMeasure4,
                strMeasure5: strMeasure5,
                strMeasure6: strMeasure6,
                strMeasure7: strMeasure7,
                strMeasure8: strMeasure8,
                strMeasure9: strMeasure9,
                strMeasure10: strMeasure10,
                strMeasure11: strMeasure11,
                strMeasure12: strMeasure12,
                strMeasure13: strMeasure13,
                strMeasure14: strMeasure14,
                strMeasure15: strMeasure15,
                strImageSource: strImageSource,
                strImageAttribution: strImageAttribution,
                strCreativeCommonsConfirmed: strCreativeCommonsConfirmed,
                dateModified: dateModified,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), $DrinksReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({favoritesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (favoritesRefs) db.favorites],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (favoritesRefs)
                    await $_getPrefetchedData<Drink, Drinks, Favorite>(
                      currentTable: table,
                      referencedTable: $DrinksReferences._favoritesRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $DrinksReferences(db, table, p0).favoritesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.drinkId == item.idDrink,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $DrinksProcessedTableManager =
    ProcessedTableManager<
      _$MealifyDatabase,
      Drinks,
      Drink,
      $DrinksFilterComposer,
      $DrinksOrderingComposer,
      $DrinksAnnotationComposer,
      $DrinksCreateCompanionBuilder,
      $DrinksUpdateCompanionBuilder,
      (Drink, $DrinksReferences),
      Drink,
      PrefetchHooks Function({bool favoritesRefs})
    >;
typedef $FavoritesCreateCompanionBuilder =
    FavoritesCompanion Function({
      required String id,
      required String mealId,
      required String drinkId,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $FavoritesUpdateCompanionBuilder =
    FavoritesCompanion Function({
      Value<String> id,
      Value<String> mealId,
      Value<String> drinkId,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $FavoritesReferences
    extends BaseReferences<_$MealifyDatabase, Favorites, Favorite> {
  $FavoritesReferences(super.$_db, super.$_table, super.$_typedResult);

  static Meals _mealIdTable(_$MealifyDatabase db) => db.meals.createAlias(
    $_aliasNameGenerator(db.favorites.mealId, db.meals.idMeal),
  );

  $MealsProcessedTableManager get mealId {
    final $_column = $_itemColumn<String>('meal_id')!;

    final manager = $MealsTableManager(
      $_db,
      $_db.meals,
    ).filter((f) => f.idMeal.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_mealIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static Drinks _drinkIdTable(_$MealifyDatabase db) => db.drinks.createAlias(
    $_aliasNameGenerator(db.favorites.drinkId, db.drinks.idDrink),
  );

  $DrinksProcessedTableManager get drinkId {
    final $_column = $_itemColumn<String>('drink_id')!;

    final manager = $DrinksTableManager(
      $_db,
      $_db.drinks,
    ).filter((f) => f.idDrink.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_drinkIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $FavoritesFilterComposer extends Composer<_$MealifyDatabase, Favorites> {
  $FavoritesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $MealsFilterComposer get mealId {
    final $MealsFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.mealId,
      referencedTable: $db.meals,
      getReferencedColumn: (t) => t.idMeal,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $MealsFilterComposer(
            $db: $db,
            $table: $db.meals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $DrinksFilterComposer get drinkId {
    final $DrinksFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.drinkId,
      referencedTable: $db.drinks,
      getReferencedColumn: (t) => t.idDrink,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $DrinksFilterComposer(
            $db: $db,
            $table: $db.drinks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $FavoritesOrderingComposer
    extends Composer<_$MealifyDatabase, Favorites> {
  $FavoritesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $MealsOrderingComposer get mealId {
    final $MealsOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.mealId,
      referencedTable: $db.meals,
      getReferencedColumn: (t) => t.idMeal,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $MealsOrderingComposer(
            $db: $db,
            $table: $db.meals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $DrinksOrderingComposer get drinkId {
    final $DrinksOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.drinkId,
      referencedTable: $db.drinks,
      getReferencedColumn: (t) => t.idDrink,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $DrinksOrderingComposer(
            $db: $db,
            $table: $db.drinks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $FavoritesAnnotationComposer
    extends Composer<_$MealifyDatabase, Favorites> {
  $FavoritesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $MealsAnnotationComposer get mealId {
    final $MealsAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.mealId,
      referencedTable: $db.meals,
      getReferencedColumn: (t) => t.idMeal,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $MealsAnnotationComposer(
            $db: $db,
            $table: $db.meals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $DrinksAnnotationComposer get drinkId {
    final $DrinksAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.drinkId,
      referencedTable: $db.drinks,
      getReferencedColumn: (t) => t.idDrink,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $DrinksAnnotationComposer(
            $db: $db,
            $table: $db.drinks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $FavoritesTableManager
    extends
        RootTableManager<
          _$MealifyDatabase,
          Favorites,
          Favorite,
          $FavoritesFilterComposer,
          $FavoritesOrderingComposer,
          $FavoritesAnnotationComposer,
          $FavoritesCreateCompanionBuilder,
          $FavoritesUpdateCompanionBuilder,
          (Favorite, $FavoritesReferences),
          Favorite,
          PrefetchHooks Function({bool mealId, bool drinkId})
        > {
  $FavoritesTableManager(_$MealifyDatabase db, Favorites table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $FavoritesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $FavoritesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $FavoritesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> mealId = const Value.absent(),
                Value<String> drinkId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FavoritesCompanion(
                id: id,
                mealId: mealId,
                drinkId: drinkId,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String mealId,
                required String drinkId,
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => FavoritesCompanion.insert(
                id: id,
                mealId: mealId,
                drinkId: drinkId,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (e.readTable(table), $FavoritesReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({mealId = false, drinkId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (mealId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.mealId,
                                referencedTable: $FavoritesReferences
                                    ._mealIdTable(db),
                                referencedColumn: $FavoritesReferences
                                    ._mealIdTable(db)
                                    .idMeal,
                              )
                              as T;
                    }
                    if (drinkId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.drinkId,
                                referencedTable: $FavoritesReferences
                                    ._drinkIdTable(db),
                                referencedColumn: $FavoritesReferences
                                    ._drinkIdTable(db)
                                    .idDrink,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $FavoritesProcessedTableManager =
    ProcessedTableManager<
      _$MealifyDatabase,
      Favorites,
      Favorite,
      $FavoritesFilterComposer,
      $FavoritesOrderingComposer,
      $FavoritesAnnotationComposer,
      $FavoritesCreateCompanionBuilder,
      $FavoritesUpdateCompanionBuilder,
      (Favorite, $FavoritesReferences),
      Favorite,
      PrefetchHooks Function({bool mealId, bool drinkId})
    >;

class $MealifyDatabaseManager {
  final _$MealifyDatabase _db;
  $MealifyDatabaseManager(this._db);
  $MealsTableManager get meals => $MealsTableManager(_db, _db.meals);
  $DrinksTableManager get drinks => $DrinksTableManager(_db, _db.drinks);
  $FavoritesTableManager get favorites =>
      $FavoritesTableManager(_db, _db.favorites);
}
