import 'package:get/get.dart';

import '../../../../core/routes/pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    2.delay(() => Get.offNamed(Routes.home));
    super.onReady();
  }
}
