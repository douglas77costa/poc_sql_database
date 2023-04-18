import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/shared/enums/status_type.dart';
import '../controllers/home_controller.dart';

class ProgramsPage extends StatelessWidget {
  ProgramsPage({Key? key}) : super(key: key);
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (controller.status) {
          case StatusType.initial:
            return const Center(child: Text('Nenhum teste executado'));
          case StatusType.load:
            return const Center(child: CircularProgressIndicator());
          case StatusType.success:
            return Obx(() {
              return ListView.builder(
                itemCount: controller.programs.length,
                itemBuilder: (context, index) {
                  final program = controller.programs[index];
                  return ListTile(
                    leading: Image.network(program.image),
                    minVerticalPadding: 24,
                    title: Text(program.name),
                    subtitle: Text(program.description),
                    onTap: () {},
                  );
                },
              );
            });
          case StatusType.error:
            return const Center(child: Text('Erro ao carregar os programas'));
        }
        return const Placeholder();
      }),
    );
  }
}
