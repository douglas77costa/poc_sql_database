import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes/pages.dart';
import 'core/theme/theme_data.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Lojong SQLIte POC',
      theme: appTheme(context),
      getPages: AppPages.pages,
      initialRoute: Routes.splash,
    );
  }
}
