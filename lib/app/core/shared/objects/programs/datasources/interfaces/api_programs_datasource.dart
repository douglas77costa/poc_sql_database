import '../../data/entities/program_entity.dart';

abstract class IApiProgramsDataSource {
  Future<List<ProgramEntity>> getPrograms();
}
