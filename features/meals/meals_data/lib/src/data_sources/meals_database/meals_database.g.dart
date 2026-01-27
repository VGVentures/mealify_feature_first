// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_database.dart';

// ignore_for_file: type=lint
class Meals extends Table with TableInfo<Meals, DbMeal> {
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
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
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
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _strMealThumbMeta = const VerificationMeta(
    'strMealThumb',
  );
  late final GeneratedColumn<String> strMealThumb = GeneratedColumn<String>(
    'str_meal_thumb',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
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
    Insertable<DbMeal> instance, {
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
    } else if (isInserting) {
      context.missing(_strMealMeta);
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
    } else if (isInserting) {
      context.missing(_strInstructionsMeta);
    }
    if (data.containsKey('str_meal_thumb')) {
      context.handle(
        _strMealThumbMeta,
        strMealThumb.isAcceptableOrUnknown(
          data['str_meal_thumb']!,
          _strMealThumbMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_strMealThumbMeta);
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
  DbMeal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbMeal(
      idMeal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_meal'],
      )!,
      strMeal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_meal'],
      )!,
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
      )!,
      strMealThumb: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}str_meal_thumb'],
      )!,
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

class DbMeal extends DataClass implements Insertable<DbMeal> {
  final String idMeal;
  final String strMeal;
  final String? strMealAlternate;
  final String? strCategory;
  final String? strArea;
  final String strInstructions;
  final String strMealThumb;
  final String? strTags;
  final String? strYoutube;
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
  const DbMeal({
    required this.idMeal,
    required this.strMeal,
    this.strMealAlternate,
    this.strCategory,
    this.strArea,
    required this.strInstructions,
    required this.strMealThumb,
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
    map['str_meal'] = Variable<String>(strMeal);
    if (!nullToAbsent || strMealAlternate != null) {
      map['str_meal_alternate'] = Variable<String>(strMealAlternate);
    }
    if (!nullToAbsent || strCategory != null) {
      map['str_category'] = Variable<String>(strCategory);
    }
    if (!nullToAbsent || strArea != null) {
      map['str_area'] = Variable<String>(strArea);
    }
    map['str_instructions'] = Variable<String>(strInstructions);
    map['str_meal_thumb'] = Variable<String>(strMealThumb);
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
      strMeal: Value(strMeal),
      strMealAlternate: strMealAlternate == null && nullToAbsent
          ? const Value.absent()
          : Value(strMealAlternate),
      strCategory: strCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(strCategory),
      strArea: strArea == null && nullToAbsent
          ? const Value.absent()
          : Value(strArea),
      strInstructions: Value(strInstructions),
      strMealThumb: Value(strMealThumb),
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

  factory DbMeal.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbMeal(
      idMeal: serializer.fromJson<String>(json['id_meal']),
      strMeal: serializer.fromJson<String>(json['str_meal']),
      strMealAlternate: serializer.fromJson<String?>(
        json['str_meal_alternate'],
      ),
      strCategory: serializer.fromJson<String?>(json['str_category']),
      strArea: serializer.fromJson<String?>(json['str_area']),
      strInstructions: serializer.fromJson<String>(json['str_instructions']),
      strMealThumb: serializer.fromJson<String>(json['str_meal_thumb']),
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
      'str_meal': serializer.toJson<String>(strMeal),
      'str_meal_alternate': serializer.toJson<String?>(strMealAlternate),
      'str_category': serializer.toJson<String?>(strCategory),
      'str_area': serializer.toJson<String?>(strArea),
      'str_instructions': serializer.toJson<String>(strInstructions),
      'str_meal_thumb': serializer.toJson<String>(strMealThumb),
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

  DbMeal copyWith({
    String? idMeal,
    String? strMeal,
    Value<String?> strMealAlternate = const Value.absent(),
    Value<String?> strCategory = const Value.absent(),
    Value<String?> strArea = const Value.absent(),
    String? strInstructions,
    String? strMealThumb,
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
  }) => DbMeal(
    idMeal: idMeal ?? this.idMeal,
    strMeal: strMeal ?? this.strMeal,
    strMealAlternate: strMealAlternate.present
        ? strMealAlternate.value
        : this.strMealAlternate,
    strCategory: strCategory.present ? strCategory.value : this.strCategory,
    strArea: strArea.present ? strArea.value : this.strArea,
    strInstructions: strInstructions ?? this.strInstructions,
    strMealThumb: strMealThumb ?? this.strMealThumb,
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
  DbMeal copyWithCompanion(MealsCompanion data) {
    return DbMeal(
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
    return (StringBuffer('DbMeal(')
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
      (other is DbMeal &&
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

class MealsCompanion extends UpdateCompanion<DbMeal> {
  final Value<String> idMeal;
  final Value<String> strMeal;
  final Value<String?> strMealAlternate;
  final Value<String?> strCategory;
  final Value<String?> strArea;
  final Value<String> strInstructions;
  final Value<String> strMealThumb;
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
    required String strMeal,
    this.strMealAlternate = const Value.absent(),
    this.strCategory = const Value.absent(),
    this.strArea = const Value.absent(),
    required String strInstructions,
    required String strMealThumb,
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
  }) : idMeal = Value(idMeal),
       strMeal = Value(strMeal),
       strInstructions = Value(strInstructions),
       strMealThumb = Value(strMealThumb);
  static Insertable<DbMeal> custom({
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
    Value<String>? strMeal,
    Value<String?>? strMealAlternate,
    Value<String?>? strCategory,
    Value<String?>? strArea,
    Value<String>? strInstructions,
    Value<String>? strMealThumb,
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

abstract class _$MealsDatabase extends GeneratedDatabase {
  _$MealsDatabase(QueryExecutor e) : super(e);
  $MealsDatabaseManager get managers => $MealsDatabaseManager(this);
  late final Meals meals = Meals(this);
  Selectable<DbMeal> findMealById(String id) {
    return customSelect(
      'SELECT * FROM meals WHERE id_meal = ?1',
      variables: [Variable<String>(id)],
      readsFrom: {meals},
    ).asyncMap(meals.mapFromRow);
  }

  Selectable<DbMeal> findMealsByIds(List<String> var1) {
    var $arrayStartIndex = 1;
    final expandedvar1 = $expandVar($arrayStartIndex, var1.length);
    $arrayStartIndex += var1.length;
    return customSelect(
      'SELECT * FROM meals WHERE id_meal IN ($expandedvar1)',
      variables: [for (var $ in var1) Variable<String>($)],
      readsFrom: {meals},
    ).asyncMap(meals.mapFromRow);
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [meals];
}

typedef $MealsCreateCompanionBuilder =
    MealsCompanion Function({
      required String idMeal,
      required String strMeal,
      Value<String?> strMealAlternate,
      Value<String?> strCategory,
      Value<String?> strArea,
      required String strInstructions,
      required String strMealThumb,
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
      Value<String> strMeal,
      Value<String?> strMealAlternate,
      Value<String?> strCategory,
      Value<String?> strArea,
      Value<String> strInstructions,
      Value<String> strMealThumb,
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

class $MealsFilterComposer extends Composer<_$MealsDatabase, Meals> {
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
}

class $MealsOrderingComposer extends Composer<_$MealsDatabase, Meals> {
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

class $MealsAnnotationComposer extends Composer<_$MealsDatabase, Meals> {
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
}

class $MealsTableManager
    extends
        RootTableManager<
          _$MealsDatabase,
          Meals,
          DbMeal,
          $MealsFilterComposer,
          $MealsOrderingComposer,
          $MealsAnnotationComposer,
          $MealsCreateCompanionBuilder,
          $MealsUpdateCompanionBuilder,
          (DbMeal, BaseReferences<_$MealsDatabase, Meals, DbMeal>),
          DbMeal,
          PrefetchHooks Function()
        > {
  $MealsTableManager(_$MealsDatabase db, Meals table)
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
                Value<String> strMeal = const Value.absent(),
                Value<String?> strMealAlternate = const Value.absent(),
                Value<String?> strCategory = const Value.absent(),
                Value<String?> strArea = const Value.absent(),
                Value<String> strInstructions = const Value.absent(),
                Value<String> strMealThumb = const Value.absent(),
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
                required String strMeal,
                Value<String?> strMealAlternate = const Value.absent(),
                Value<String?> strCategory = const Value.absent(),
                Value<String?> strArea = const Value.absent(),
                required String strInstructions,
                required String strMealThumb,
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
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $MealsProcessedTableManager =
    ProcessedTableManager<
      _$MealsDatabase,
      Meals,
      DbMeal,
      $MealsFilterComposer,
      $MealsOrderingComposer,
      $MealsAnnotationComposer,
      $MealsCreateCompanionBuilder,
      $MealsUpdateCompanionBuilder,
      (DbMeal, BaseReferences<_$MealsDatabase, Meals, DbMeal>),
      DbMeal,
      PrefetchHooks Function()
    >;

class $MealsDatabaseManager {
  final _$MealsDatabase _db;
  $MealsDatabaseManager(this._db);
  $MealsTableManager get meals => $MealsTableManager(_db, _db.meals);
}
