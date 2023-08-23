import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/constants/imageStrings/imageStrings.dart';
import 'controllers.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});

  Widget _buildSplashScreen() {
    return Container(
      width: 175.w,
      margin: EdgeInsets.only(top: 350.h),
      child: Column(
        children: [Image.asset(rexLogo)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: Center(
        child: Column(
          children: [
            _buildSplashScreen(),
          ],
        ),
      ),
    );
  }
}
