import '../../data/entities/program_entity.dart';

abstract class IProgramsRepository {
  Future<List<ProgramEntity>> getPrograms({bool forceUpdate = false, required loadDrift});
}
