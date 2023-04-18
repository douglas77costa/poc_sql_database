import 'package:get/get.dart';

import '../../../../../features/home/presentation/controllers/home_controller.dart';
import '../../../databases/drift_database.dart';
import '../data/entities/program_entity.dart';
import '../data/models/program_model.dart';
import 'interfaces/drift_programs_datasource.dart';

class DriftProgramsDataSource implements IDriftProgramsDataSource {
  final MyDatabase _database;

  DriftProgramsDataSource({required MyDatabase database})
      : _database = database;

  @override
  Future<List<ProgramEntity>> getPrograms() async {
    final controller = Get.find<HomeController>();
    final stopwatch = Stopwatch();
    stopwatch.start();
    var rows = await _database.select(_database.programDrift).get();
    stopwatch.stop();
    controller.readDrift = stopwatch.elapsedMilliseconds.toDouble();
    return rows.map((e) => ProgramModel.fromProgramData(e)).toList();
  }

  @override
  Future<void> savePrograms(List<ProgramEntity> programs) async {
    await clearPrograms();

    var programsCompanion = ProgramModel.fromEntityList(programs)
        .map((e) => e.toCompanion())
        .toList();

    final controller = Get.find<HomeController>();
    final stopwatch = Stopwatch();
    stopwatch.start();
    await Future.forEach(
        programsCompanion,
        (element) async =>
            await _database.into(_database.programDrift).insert(element));
    stopwatch.stop();
    controller.createDrift = stopwatch.elapsedMilliseconds.toDouble();

    stopwatch.reset();
    stopwatch.start();
    await Future.forEach(programsCompanion, (element) async {
      await _database.update(_database.programDrift).replace(element);
    });
    stopwatch.stop();
    controller.updateDrift = stopwatch.elapsedMilliseconds.toDouble();

  }

  @override
  Future<void> clearPrograms() async {
    final controller = Get.find<HomeController>();
    final stopwatch = Stopwatch();
    stopwatch.start();
    await _database.delete(_database.programDrift).go();
    stopwatch.stop();
    controller.deleteDrift = stopwatch.elapsedMilliseconds.toDouble();
  }

  @override
  Future<bool> hasPrograms() async {
    var value = await _database.select(_database.programDrift).get();
    return value.isNotEmpty;
  }
}
