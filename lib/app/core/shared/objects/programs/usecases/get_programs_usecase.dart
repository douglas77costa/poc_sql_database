import '../data/entities/program_entity.dart';
import '../repositories/interfaces/program_repository.dart';
import 'interfaces/get_programs_usecase.dart';

class GetProgramsUseCase implements IGetProgramsUseCase {
  final IProgramsRepository _repository;

  GetProgramsUseCase({required IProgramsRepository repository})
      : _repository = repository;

  @override
  Future<List<ProgramEntity>> call({bool forceUpdate = false, required bool loadDrift}) {
    return _repository.getPrograms(forceUpdate: forceUpdate, loadDrift: loadDrift);
  }
}
