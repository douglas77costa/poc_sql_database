import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData appTheme(context) => ThemeData.from(
    useMaterial3: true,
    textTheme: Theme.of(context).textTheme.apply(fontFamily: 'asap'),
    colorScheme: ColorScheme.fromSwatch(
        accentColor: AppColors.colorPrimary,
        primarySwatch: AppColors.createMaterialColor(AppColors.colorPrimary),
        primaryColorDark: AppColors.colorPrimary,
        backgroundColor: Colors.white));
