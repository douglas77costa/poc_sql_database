import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const colorPrimary = Color(0xFFE09090);
  static const colorSecundary = Color(0xFFEEDADB);
  static const shadow = Color(0x00FFFFFF);
  static const textColor = Color(0xFF80848F);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const clear = Color(0x00FFFFFF);
  static const transparent = Color(0x00000000);

  //Deveriamos ter um arquivo de cor para cada feature.
  static const textColor2 = Color(0xFF88888A);
  static const textColor3 = Color(0xFF767679);
  static const textColor4 = Color(0xFFB8B8BA);
  static const textColor5 = Color(0xFF8A8992);
  static const textColor6 = Color(0xFF636670);
  static const textColor7 = Color(0xFFC57575);
  static const whatsappButtonColor = Color(0xFF1BD741);
  static const whatsappShadowButtonColor = Color(0xFF18B738);
  static const primaryDropShadowColor = Color(0xFFA86C6C);
  static const primaryBackgroundLayerColor = Color(0xFFFAF0F0);
  static const textBackgroundLayerColor = Color(0xFFF8F8F8);
  static const primaryForegroundLayerColor = Color(0xFFBB8F8F);
  static const textfieldColor = Color(0xFF80828E);
  static const greenBaseColor = Color(0xFF76BD94);
  static const borderCheckButtonColor = Color(0xFFC57575);

  static const premiumBannerBlackColor = Color(0xFF595E6B);
  static const premiumBannerCardColor = Color.fromRGBO(255, 255, 255, 0.6);
  static const premiumBannerTextColor = Color(0xFF7A7979);

  static const inputTextFillColor = Color(0xFFECECEC);
  static const greenCheck = Color(0xFFADCA35);
  static const greenCheckColor = Color(0xFF72C64A);
  static const redCheckColor = Color(0xFFDD4949);
  static const backgroundLandColor = Color(0xFFE9F4FC);
  static const lightGray = Color(0xFFA1A1A1);
  static const grayishBlue = Color(0xFF66676B);
  static const borderButtonColor = Color(0xFFE1869D);
  static const lightGray2 = Color(0xFFD5DADE);
  static const lightGray3 = Color(0xFF969696);
  static const lightRed = Color(0xFFC78080);
  static const red = Color(0xFFE1442C);
  static const lightYellow = Color(0xFFFFED9E);
  static const blackApple = Color(0xFF202124);

  static const darkBlueColor = Color(0xFF152650);
  static const darkBlueColor2 = Color(0xFF283B72);
  static const lightBlueColor = Color(0xFF6585A9);
  static const lightBlueColor2 = Color(0xFF9BAAE9);
  static const lightBlueColor3 = Color(0xFF40599B);
  static const lightBlueColor4 = Color(0xFF46578E);
  static const darkBlueColor3 = Color(0xFF243367);
  static const darkBlueColor4 = Color(0xFF181C54);
  static const tagColor = Color(0xFFE8AA83);

  static const toolsInspirationBackground = Color(0xFF9EBB97);
  static const toolsGuidedBreathingBackground = Color(0xFFB9E7EF);
  static const toolsTimerBackground = Color(0xFFF3B093);
  static const toolsDiaryBackground = Color(0xFFE8D5A2);
  static const toolsRelaxingEnviromentBackground = Color(0xFF152650);

  static const sleepTabActive = Color(0xFF151E50);
  static const sleepTabInactive = Color(0xFF2D3266);
  static const sleepTabTextColor = Color(0xFF9BAAE9);
  static const sleepTabToggleBackGround = Color(0xFF131953);
  static const sleepTabToggleBackGround2 = Color(0xFF152650);

  static const loginTextFieldColor = Color(0xFFF1F1F1);

  static const backgroundLabelColor = Color(0xFFFAFAFA);
  static const backgroundLabelBorderColor = Color(0xE8E8E8E8);
  static const lightOrange= Color(0xFFFECC9E);
  static const darkShadeOrange = Color(0xFF786451);


  static Color blackWith({double alpha = 1}) {
    var alphaValue = (alpha * 255).toInt();
    return const Color(0xFF000000).withAlpha(alphaValue);
  }
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}

extension Alpha on Color {
  Color applyAlpha(double alpha) {
    var alphaValue = (alpha * 255).toInt();
    return this.withAlpha(alphaValue);
  }
}
