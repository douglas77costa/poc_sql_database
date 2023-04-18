import '../../data/entities/program_entity.dart';

abstract class IGetProgramsUseCase {
  Future<List<ProgramEntity>> call(
      {bool forceUpdate = false, required bool loadDrift});
}
