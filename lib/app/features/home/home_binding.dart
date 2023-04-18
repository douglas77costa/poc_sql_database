import 'package:get/get.dart';
import 'package:poc_sql_database/app/core/shared/objects/programs/datasources/floor_programs_datasource.dart';

import '../../core/shared/databases/drift_database.dart';
import '../../core/shared/objects/programs/datasources/api_programs_datasource.dart';
import '../../core/shared/objects/programs/datasources/drift_programs_datasource.dart';
import '../../core/shared/objects/programs/repositories/program_repository.dart';
import '../../core/shared/objects/programs/usecases/get_programs_usecase.dart';
import 'presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() async {

    Get.lazyPut(() => ApiProgramsDataSource(getConnect: GetConnect()));
    Get.lazyPut(() => DriftProgramsDataSource(database: MyDatabase()));
    Get.lazyPut(() => FloorProgramsDataSource(database: Get.find()));

    Get.lazyPut(() => ProgramsRepository(
          apiProgramsDataSource: Get.find<ApiProgramsDataSource>(),
          driftProgramsDataSource: Get.find<DriftProgramsDataSource>(),
          floorProgramsDataSource: Get.find<FloorProgramsDataSource>(),
        ));

    Get.lazyPut(
        () => GetProgramsUseCase(repository: Get.find<ProgramsRepository>()));

    Get.lazyPut(() =>
        HomeController(getProgramsUseCase: Get.find<GetProgramsUseCase>()));
  }
}
