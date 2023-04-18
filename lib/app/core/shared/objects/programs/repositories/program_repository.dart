import '../data/entities/program_entity.dart';
import '../datasources/interfaces/api_programs_datasource.dart';
import '../datasources/interfaces/drift_programs_datasource.dart';
import '../datasources/interfaces/floor_programs_datasource.dart';
import 'interfaces/program_repository.dart';

class ProgramsRepository implements IProgramsRepository {
  final IApiProgramsDataSource _apiProgramsDataSource;
  final IDriftProgramsDataSource _driftProgramsDataSource;
  final IFloorProgramsDataSource _floorProgramsDataSource;

  ProgramsRepository({
    required IApiProgramsDataSource apiProgramsDataSource,
    required IDriftProgramsDataSource driftProgramsDataSource,
    required IFloorProgramsDataSource floorProgramsDataSource,
  })  : _apiProgramsDataSource = apiProgramsDataSource,
        _driftProgramsDataSource = driftProgramsDataSource,
        _floorProgramsDataSource = floorProgramsDataSource;

  @override
  Future<List<ProgramEntity>> getPrograms(
      {bool forceUpdate = false, required loadDrift}) async {
    if (!await _driftProgramsDataSource.hasPrograms()) {
      forceUpdate = true;
    }

    List<ProgramEntity> apiPrograms = [];

    if (forceUpdate) {
      apiPrograms = await _apiProgramsDataSource.getPrograms();
      if (loadDrift) {
        await _driftProgramsDataSource.savePrograms(apiPrograms);
        return _driftProgramsDataSource.getPrograms();
      } else {
        await _floorProgramsDataSource.savePrograms(apiPrograms);
        return _floorProgramsDataSource.getPrograms();
      }
    } else {
      if (loadDrift) {
        return _driftProgramsDataSource.getPrograms();
      } else {
        return _floorProgramsDataSource.getPrograms();
      }
    }
  }
}
