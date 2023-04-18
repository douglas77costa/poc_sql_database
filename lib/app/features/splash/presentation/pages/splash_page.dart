import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/assets.dart';
import '../controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  final controller = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.lojongLogo,
              width: 100,
            ),
            const SizedBox(height: 40),
            const SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(
                  color: Colors.white,
                )),
          ],
        ),
      ),
      backgroundColor: AppColors.colorPrimary,
    );
  }
}
