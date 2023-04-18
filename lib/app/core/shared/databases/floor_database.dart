// database.dart

// required package imports
import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../objects/programs/data/dao/program_dao.dart';
import '../objects/programs/data/tables/program_floor_table.dart';

part 'floor_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [ProgramFloor])
abstract class AppDatabase extends FloorDatabase {
  ProgramDao get programDao;
}