import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/app_widget.dart';
import 'app/core/shared/databases/floor_database.dart';

void main() async {
  runApp(const AppWidget());
  var database =
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();

  Get.put(database);
}
