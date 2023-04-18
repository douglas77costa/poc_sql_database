import '../../data/entities/program_entity.dart';

abstract class IDriftProgramsDataSource {
  Future<List<ProgramEntity>> getPrograms();
  Future<void> savePrograms(List<ProgramEntity> programs);
  Future<void> clearPrograms();
  Future<bool> hasPrograms();
}
