import 'package:flutter/material.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/constants/sizes/sizes.dart';

class RElevatedButtonTheme {
  static final rexElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          foregroundColor: AppColor.mainTextColor,
          backgroundColor: AppColor.mainTextColor,
          side: const BorderSide(color: AppColor.mainTextColor),
          padding:  const EdgeInsets.symmetric(vertical: rexButtonHeight)));

  static final rexGreenElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          foregroundColor: AppColor.mainColor,
          backgroundColor: AppColor.mainColor,
          side: const BorderSide(color: AppColor.mainColor),
          padding: const EdgeInsets.symmetric(vertical: rexButtonHeight)));
}
