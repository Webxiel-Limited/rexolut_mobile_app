import 'package:flutter/material.dart';
import 'package:rexolut/common/constants/topography/textStyle.dart';

class RexsolutTextTheme {
  static TextTheme rexTextTheme =  TextTheme(
    headlineLarge: AppTextStyle.headline1Bold,
    headlineMedium: AppTextStyle.headline2Bold,
    headlineSmall: AppTextStyle.headline3Bold,
    titleLarge: AppTextStyle.headline1,
    titleMedium: AppTextStyle.headline2,
    titleSmall: AppTextStyle.headline3,
    bodyLarge: AppTextStyle.bodyLargeBold,
    bodyMedium: AppTextStyle.bodyLarge,
    bodySmall: AppTextStyle.bodySmallBold,
    labelLarge: AppTextStyle.bodySmall,
    labelMedium: AppTextStyle.button,
    labelSmall:AppTextStyle.caption,
  );
}