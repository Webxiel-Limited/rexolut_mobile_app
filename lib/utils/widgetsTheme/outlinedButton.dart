import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/constants/sizes/sizes.dart';

class ROutlinedButtonTheme {
  static final rexOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    side: const BorderSide(
        width: 1,
        color: AppColor.stroke,
        strokeAlign: BorderSide.strokeAlignCenter),
    foregroundColor: AppColor.surfaceColor,
    padding:  const EdgeInsets.symmetric(vertical: rexButtonHeight),
  ));
}
