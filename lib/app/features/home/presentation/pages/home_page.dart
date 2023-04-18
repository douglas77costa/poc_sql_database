import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_sql_database/app/features/home/presentation/pages/programs_page.dart';
import 'package:poc_sql_database/app/features/home/presentation/pages/result_page.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lojong SQLIte POC'),
          elevation: 3,
          centerTitle: true,
        ),
        body: Obx(() {
          return Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FilledButton(
                    onPressed: () => controller.loadPrograms(true),
                    style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text(
                      'Testar DRIFT',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  FilledButton(
                    onPressed: () => controller.loadPrograms(false),
                    style:
                        FilledButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text(
                      'Testar FLOOR',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: IndexedStack(
                  index: controller.currentIndex,
                  children: [
                    ProgramsPage(),
                    ResultPage(),
                  ],
                ),
              ),
            ],
          );
        }),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
            currentIndex: controller.currentIndex,
            onTap: controller.changePage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted),
                label: 'Programas',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.auto_graph),
                label: 'Resultados',
              ),
            ],
          );
        }));
  }
}
