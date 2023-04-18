import 'package:get/get.dart';

import '../../features/home/home_binding.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';
import '../../features/splash/splash_binding.dart';

part 'routes.dart';

class AppPages {
  AppPages._();

  static final pages = <GetPage>[
    GetPage(
      name: Routes.splash,
      page: () => SplashPage(),
      binding: SplashBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
      transition: Transition.noTransition,
    ),
  ];
}
