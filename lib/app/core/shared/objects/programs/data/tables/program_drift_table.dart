import 'package:drift/drift.dart';

class ProgramDrift extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text()();

  TextColumn get subTitle => text()();

  TextColumn get nameLocale => text()();

  TextColumn get description => text()();

  TextColumn get image => text()();

  IntColumn get order => integer()();

  IntColumn get parentId => integer()();

  TextColumn get bigImage => text()();

  TextColumn get webSlug => text()();

  IntColumn get web => integer()();

  TextColumn get hex => text()();

  IntColumn get defaultUi => integer()();

  IntColumn get status => integer()();

  IntColumn get releaseWithAds => integer()();

  IntColumn get newProgram => integer()();

  IntColumn get instructorId => integer().nullable()();

  TextColumn get programType => text()();

  TextColumn get animation => text().nullable()();

  TextColumn get videoUrl => text().nullable()();

  TextColumn get videoUrl2 => text().nullable()();

  TextColumn get updateAt => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
