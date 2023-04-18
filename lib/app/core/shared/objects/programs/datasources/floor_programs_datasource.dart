import 'package:get/get.dart';
import 'package:poc_sql_database/app/core/shared/databases/floor_database.dart';
import 'package:poc_sql_database/app/core/shared/objects/programs/data/entities/program_entity.dart';

import '../../../../../features/home/presentation/controllers/home_controller.dart';
import '../data/models/program_model.dart';
import 'interfaces/floor_programs_datasource.dart';

class FloorProgramsDataSource implements IFloorProgramsDataSource {
  final AppDatabase _database;

  FloorProgramsDataSource({required AppDatabase database})
      : _database = database;

  @override
  Future<List<ProgramEntity>> getPrograms() async {
    final controller = Get.find<HomeController>();
    final stopwatch = Stopwatch();
    stopwatch.start();
    var programsFloor = await _database.programDao.findAllPrograms();
    stopwatch.stop();
    controller.readFloor = stopwatch.elapsedMilliseconds.toDouble();
    return programsFloor.map((e) => ProgramModel.fromProgramFloor(e)).toList();
  }

  @override
  Future<void> savePrograms(List<ProgramEntity> programs) async {
    await clearPrograms();

    var programsFloor =
        ProgramModel.fromEntityList(programs).map((e) => e.toFloor()).toList();

    final controller = Get.find<HomeController>();
    final stopwatch = Stopwatch();
    stopwatch.start();
    await Future.forEach(programsFloor,
        (element) async => await _database.programDao.insertProgram(element));
    stopwatch.stop();
    controller.createFloor = stopwatch.elapsedMilliseconds.toDouble();

    stopwatch.reset();
    stopwatch.start();
    await Future.forEach(programsFloor, (element) async {
      await _database.programDao.updateProgram(element);
    });
    stopwatch.stop();
    controller.updateFloor = stopwatch.elapsedMilliseconds.toDouble();
  }

  @override
  Future<bool> hasPrograms() async {
    var value = await _database.programDao.countPrograms();
    return value != null && value > 0;
  }

  @override
  Future<void> clearPrograms() async {
    final controller = Get.find<HomeController>();
    final stopwatch = Stopwatch();
    stopwatch.start();
    await _database.programDao.deleteAllPrograms();
    stopwatch.stop();
    controller.deleteFloor = stopwatch.elapsedMilliseconds.toDouble();
  }
}
