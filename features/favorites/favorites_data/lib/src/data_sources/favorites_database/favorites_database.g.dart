// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_database.dart';

// ignore_for_file: type=lint
class Favorites extends Table with TableInfo<Favorites, DbFavorite> {
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
    $customConstraints: 'NOT NULL',
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
    $customConstraints: 'NOT NULL',
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
    Insertable<DbFavorite> instance, {
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
  DbFavorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbFavorite(
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

class DbFavorite extends DataClass implements Insertable<DbFavorite> {
  final String id;
  final String mealId;
  final String drinkId;
  final DateTime createdAt;
  const DbFavorite({
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

  factory DbFavorite.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbFavorite(
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

  DbFavorite copyWith({
    String? id,
    String? mealId,
    String? drinkId,
    DateTime? createdAt,
  }) => DbFavorite(
    id: id ?? this.id,
    mealId: mealId ?? this.mealId,
    drinkId: drinkId ?? this.drinkId,
    createdAt: createdAt ?? this.createdAt,
  );
  DbFavorite copyWithCompanion(FavoritesCompanion data) {
    return DbFavorite(
      id: data.id.present ? data.id.value : this.id,
      mealId: data.mealId.present ? data.mealId.value : this.mealId,
      drinkId: data.drinkId.present ? data.drinkId.value : this.drinkId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbFavorite(')
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
      (other is DbFavorite &&
          other.id == this.id &&
          other.mealId == this.mealId &&
          other.drinkId == this.drinkId &&
          other.createdAt == this.createdAt);
}

class FavoritesCompanion extends UpdateCompanion<DbFavorite> {
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
  static Insertable<DbFavorite> custom({
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

abstract class _$FavoritesDatabase extends GeneratedDatabase {
  _$FavoritesDatabase(QueryExecutor e) : super(e);
  $FavoritesDatabaseManager get managers => $FavoritesDatabaseManager(this);
  late final Favorites favorites = Favorites(this);
  Selectable<DbFavorite> findFavoriteById(String favoriteId) {
    return customSelect(
      'SELECT * FROM favorites WHERE id = ?1',
      variables: [Variable<String>(favoriteId)],
      readsFrom: {favorites},
    ).asyncMap(favorites.mapFromRow);
  }

  Selectable<String> findAllFavoriteIds() {
    return customSelect(
      'SELECT id FROM favorites ORDER BY created_at DESC',
      variables: [],
      readsFrom: {favorites},
    ).map((QueryRow row) => row.read<String>('id'));
  }

  Future<int> deleteFavoriteById(String favoriteId) {
    return customUpdate(
      'DELETE FROM favorites WHERE id = ?1',
      variables: [Variable<String>(favoriteId)],
      updates: {favorites},
      updateKind: UpdateKind.delete,
    );
  }

  Future<int> deleteFavoriteByMealAndDrink(String mealId, String drinkId) {
    return customUpdate(
      'DELETE FROM favorites WHERE meal_id = ?1 AND drink_id = ?2',
      variables: [Variable<String>(mealId), Variable<String>(drinkId)],
      updates: {favorites},
      updateKind: UpdateKind.delete,
    );
  }

  Selectable<bool> isFavorite(String mealId, String drinkId) {
    return customSelect(
      'SELECT EXISTS (SELECT 1 AS _c1 FROM favorites WHERE meal_id = ?1 AND drink_id = ?2) AS _c0',
      variables: [Variable<String>(mealId), Variable<String>(drinkId)],
      readsFrom: {favorites},
    ).map((QueryRow row) => row.read<bool>('_c0'));
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favorites];
}

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

class $FavoritesFilterComposer
    extends Composer<_$FavoritesDatabase, Favorites> {
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

  ColumnFilters<String> get mealId => $composableBuilder(
    column: $table.mealId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get drinkId => $composableBuilder(
    column: $table.drinkId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $FavoritesOrderingComposer
    extends Composer<_$FavoritesDatabase, Favorites> {
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

  ColumnOrderings<String> get mealId => $composableBuilder(
    column: $table.mealId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get drinkId => $composableBuilder(
    column: $table.drinkId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $FavoritesAnnotationComposer
    extends Composer<_$FavoritesDatabase, Favorites> {
  $FavoritesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get mealId =>
      $composableBuilder(column: $table.mealId, builder: (column) => column);

  GeneratedColumn<String> get drinkId =>
      $composableBuilder(column: $table.drinkId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $FavoritesTableManager
    extends
        RootTableManager<
          _$FavoritesDatabase,
          Favorites,
          DbFavorite,
          $FavoritesFilterComposer,
          $FavoritesOrderingComposer,
          $FavoritesAnnotationComposer,
          $FavoritesCreateCompanionBuilder,
          $FavoritesUpdateCompanionBuilder,
          (
            DbFavorite,
            BaseReferences<_$FavoritesDatabase, Favorites, DbFavorite>,
          ),
          DbFavorite,
          PrefetchHooks Function()
        > {
  $FavoritesTableManager(_$FavoritesDatabase db, Favorites table)
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
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $FavoritesProcessedTableManager =
    ProcessedTableManager<
      _$FavoritesDatabase,
      Favorites,
      DbFavorite,
      $FavoritesFilterComposer,
      $FavoritesOrderingComposer,
      $FavoritesAnnotationComposer,
      $FavoritesCreateCompanionBuilder,
      $FavoritesUpdateCompanionBuilder,
      (DbFavorite, BaseReferences<_$FavoritesDatabase, Favorites, DbFavorite>),
      DbFavorite,
      PrefetchHooks Function()
    >;

class $FavoritesDatabaseManager {
  final _$FavoritesDatabase _db;
  $FavoritesDatabaseManager(this._db);
  $FavoritesTableManager get favorites =>
      $FavoritesTableManager(_db, _db.favorites);
}
