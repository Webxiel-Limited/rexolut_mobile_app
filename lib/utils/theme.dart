import 'package:flutter/material.dart';
import 'package:rexolut/utils/widgetsTheme/elevatedButton.dart';
import 'package:rexolut/utils/widgetsTheme/outlinedButton.dart';

import '../common/constants/colors/colors.dart';
import '../common/constants/topography/textTheme.dart';

class AppThemeData {
  static final ThemeData defaultTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColor.surfaceColor,
      errorColor: AppColor.errorTextColor,
      outlinedButtonTheme: ROutlinedButtonTheme.rexOutlinedButtonTheme,
      elevatedButtonTheme: RElevatedButtonTheme.rexElevatedButtonTheme,
      textTheme: RexsolutTextTheme.rexTextTheme);

  static final ThemeData defaultThemeGreen = ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColor.surfaceColor,
      errorColor: AppColor.errorTextColor,
      outlinedButtonTheme: ROutlinedButtonTheme.rexOutlinedButtonTheme,
      elevatedButtonTheme: RElevatedButtonTheme.rexGreenElevatedButtonTheme,
      textTheme: RexsolutTextTheme.rexTextTheme);
}
