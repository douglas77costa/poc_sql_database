import 'package:floor/floor.dart';

import '../tables/program_floor_table.dart';

@dao
abstract class ProgramDao {
  @Query('SELECT * FROM ProgramFloor')
  Future<List<ProgramFloor>> findAllPrograms();

  @Query('DELETE FROM ProgramFloor')
  Future<void> deleteAllPrograms();

  @Query('SELECT COUNT(id) FROM ProgramFloor')
  Future<int?> countPrograms();

  @insert
  Future<void> insertProgram(ProgramFloor program);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateProgram(ProgramFloor program);
}
