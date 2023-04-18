// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  ProgramDao? _programDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ProgramFloor` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `subTitle` TEXT NOT NULL, `nameLocale` TEXT NOT NULL, `description` TEXT NOT NULL, `image` TEXT NOT NULL, `order` INTEGER NOT NULL, `parentId` INTEGER NOT NULL, `bigImage` TEXT NOT NULL, `webSlug` TEXT NOT NULL, `web` INTEGER NOT NULL, `hex` TEXT NOT NULL, `defaultUi` INTEGER NOT NULL, `status` INTEGER NOT NULL, `releaseWithAds` INTEGER NOT NULL, `newProgram` INTEGER NOT NULL, `instructorId` INTEGER, `programType` TEXT NOT NULL, `animation` TEXT, `videoUrl` TEXT, `videoUrl2` TEXT, `updateAt` TEXT, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  ProgramDao get programDao {
    return _programDaoInstance ??= _$ProgramDao(database, changeListener);
  }
}

class _$ProgramDao extends ProgramDao {
  _$ProgramDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _programFloorInsertionAdapter = InsertionAdapter(
            database,
            'ProgramFloor',
            (ProgramFloor item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'subTitle': item.subTitle,
                  'nameLocale': item.nameLocale,
                  'description': item.description,
                  'image': item.image,
                  'order': item.order,
                  'parentId': item.parentId,
                  'bigImage': item.bigImage,
                  'webSlug': item.webSlug,
                  'web': item.web,
                  'hex': item.hex,
                  'defaultUi': item.defaultUi,
                  'status': item.status,
                  'releaseWithAds': item.releaseWithAds,
                  'newProgram': item.newProgram,
                  'instructorId': item.instructorId,
                  'programType': item.programType,
                  'animation': item.animation,
                  'videoUrl': item.videoUrl,
                  'videoUrl2': item.videoUrl2,
                  'updateAt': item.updateAt
                }),
        _programFloorUpdateAdapter = UpdateAdapter(
            database,
            'ProgramFloor',
            ['id'],
            (ProgramFloor item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'subTitle': item.subTitle,
                  'nameLocale': item.nameLocale,
                  'description': item.description,
                  'image': item.image,
                  'order': item.order,
                  'parentId': item.parentId,
                  'bigImage': item.bigImage,
                  'webSlug': item.webSlug,
                  'web': item.web,
                  'hex': item.hex,
                  'defaultUi': item.defaultUi,
                  'status': item.status,
                  'releaseWithAds': item.releaseWithAds,
                  'newProgram': item.newProgram,
                  'instructorId': item.instructorId,
                  'programType': item.programType,
                  'animation': item.animation,
                  'videoUrl': item.videoUrl,
                  'videoUrl2': item.videoUrl2,
                  'updateAt': item.updateAt
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ProgramFloor> _programFloorInsertionAdapter;

  final UpdateAdapter<ProgramFloor> _programFloorUpdateAdapter;

  @override
  Future<List<ProgramFloor>> findAllPrograms() async {
    return _queryAdapter.queryList('SELECT * FROM ProgramFloor',
        mapper: (Map<String, Object?> row) => ProgramFloor(
            id: row['id'] as int,
            name: row['name'] as String,
            subTitle: row['subTitle'] as String,
            nameLocale: row['nameLocale'] as String,
            description: row['description'] as String,
            image: row['image'] as String,
            order: row['order'] as int,
            parentId: row['parentId'] as int,
            bigImage: row['bigImage'] as String,
            webSlug: row['webSlug'] as String,
            web: row['web'] as int,
            hex: row['hex'] as String,
            defaultUi: row['defaultUi'] as int,
            status: row['status'] as int,
            releaseWithAds: row['releaseWithAds'] as int,
            newProgram: row['newProgram'] as int,
            instructorId: row['instructorId'] as int?,
            programType: row['programType'] as String,
            animation: row['animation'] as String?,
            videoUrl: row['videoUrl'] as String?,
            videoUrl2: row['videoUrl2'] as String?,
            updateAt: row['updateAt'] as String?));
  }

  @override
  Future<void> deleteAllPrograms() async {
    await _queryAdapter.queryNoReturn('DELETE FROM ProgramFloor');
  }

  @override
  Future<int?> countPrograms() async {
    return _queryAdapter.query('SELECT COUNT(id) FROM ProgramFloor',
        mapper: (Map<String, Object?> row) => row.values.first as int);
  }

  @override
  Future<void> insertProgram(ProgramFloor program) async {
    await _programFloorInsertionAdapter.insert(
        program, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateProgram(ProgramFloor program) async {
    await _programFloorUpdateAdapter.update(
        program, OnConflictStrategy.replace);
  }
}
