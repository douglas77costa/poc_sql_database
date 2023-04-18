import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/shared/enums/status_type.dart';
import '../../../../core/shared/models/chart_sample_data.dart';
import '../../../../core/shared/objects/programs/data/entities/program_entity.dart';
import '../../../../core/shared/objects/programs/usecases/interfaces/get_programs_usecase.dart';

class HomeController extends GetxController {
  final IGetProgramsUseCase _getProgramsUseCase;

  HomeController({required IGetProgramsUseCase getProgramsUseCase})
      : _getProgramsUseCase = getProgramsUseCase;

  final _status = StatusType.initial.obs;

  get status => _status.value;

  set status(value) => _status.value = value;

  final _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  void changePage(int index) => _currentIndex.value = index;

  final programs = <ProgramEntity>[].obs;

  final driftResults = <ColumnSeries<ChartSampleData, String>>[].obs;

  final floorResults = <ColumnSeries<ChartSampleData, String>>[].obs;

  double readDrift = 0.0;
  double createDrift = 0.0;
  double deleteDrift = 0.0;
  double updateDrift = 0.0;

  double readFloor = 0.0;
  double createFloor = 0.0;
  double deleteFloor = 0.0;
  double updateFloor = 0.0;

  Future<void> loadPrograms(bool loadDrift) async {
    try {
      status = StatusType.load;
      var result = await _getProgramsUseCase.call(
          forceUpdate: true, loadDrift: loadDrift);
      programs.clear();
      programs.addAll(result);

      if (loadDrift) {
        await _loadDriftResults();
      } else {
        await _loadFloorResults();
      }
      status = StatusType.success;
    } catch (e) {
      status = StatusType.error;
      debugPrint(e.toString());
    }
  }

  Future<void> _loadDriftResults() async {
    driftResults.clear();
    driftResults.add(ColumnSeries<ChartSampleData, String>(
      dataSource: [
        ChartSampleData(x: 'Ler', y: readDrift),
        ChartSampleData(x: 'Salvar', y: createDrift),
        ChartSampleData(x: 'Excluir', y: deleteDrift),
        ChartSampleData(x: 'Editar', y: updateDrift),
      ],
      xValueMapper: (ChartSampleData sales, _) => sales.x,
      yValueMapper: (ChartSampleData sales, _) => sales.y,
      dataLabelSettings: const DataLabelSettings(
          isVisible: true, textStyle: TextStyle(fontSize: 10)),
    ));
  }

  Future<void> _loadFloorResults() async {
    floorResults.clear();
    floorResults.add(ColumnSeries<ChartSampleData, String>(
      dataSource: [
        ChartSampleData(x: 'Ler', y: readFloor),
        ChartSampleData(x: 'Salvar', y: createFloor),
        ChartSampleData(x: 'Excluir', y: deleteFloor),
        ChartSampleData(x: 'Editar', y: updateFloor),
      ],
      color: Colors.green,
      xValueMapper: (ChartSampleData sales, _) => sales.x,
      yValueMapper: (ChartSampleData sales, _) => sales.y,
      dataLabelSettings: const DataLabelSettings(
          isVisible: true, textStyle: TextStyle(fontSize: 10)),
    ));
  }
}
