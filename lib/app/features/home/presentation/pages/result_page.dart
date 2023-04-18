import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/shared/enums/status_type.dart';
import '../../../../core/shared/models/chart_sample_data.dart';
import '../controllers/home_controller.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final controller = Get.find<HomeController>();

  TooltipBehavior? _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior =
        TooltipBehavior(enable: true, header: '', canShowMarker: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      switch (controller.status) {
        case StatusType.initial:
          return const Center(child: Text('Nenhum teste executado'));
        case StatusType.load:
          return const Center(child: CircularProgressIndicator());
        case StatusType.success:
          return Column(
            children: [
              Flexible(flex: 1, child: _buildDriftChart()),
              Flexible(flex: 1, child: _buildFloorChart())
            ],
          );
        case StatusType.error:
          return const Center(child: Text('Erro ao carregar os programas'));
      }
      return const Placeholder();
    });
  }

  Widget _buildDriftChart() {
    return Obx(() {
      return SfCartesianChart(
        plotAreaBorderWidth: 0,
        title: ChartTitle(text: 'Operações DRIFT'),
        primaryXAxis: CategoryAxis(
          majorGridLines: const MajorGridLines(width: 0),
        ),
        primaryYAxis: NumericAxis(
            axisLine: const AxisLine(width: 0),
            labelFormat: '{value} ms',
            majorTickLines: const MajorTickLines(size: 0)),
        series: controller.driftResults.toList(),
        tooltipBehavior: _tooltipBehavior,
      );
    });
  }

  Widget _buildFloorChart() {
    return Obx(() {
      return SfCartesianChart(
        plotAreaBorderWidth: 0,
        title: ChartTitle(text: 'Operações FLOOR'),
        primaryXAxis: CategoryAxis(
          majorGridLines: const MajorGridLines(width: 0),
        ),
        primaryYAxis: NumericAxis(
            axisLine: const AxisLine(width: 0),
            labelFormat: '{value} ms',
            majorTickLines: const MajorTickLines(size: 0)),
        series: controller.floorResults.toList(),
        tooltipBehavior: _tooltipBehavior,
      );
    });
  }
}
