import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/common/constants/colors/colors.dart';
import 'package:rexolut/common/constants/imageStrings/imageStrings.dart';
import 'package:rexolut/common/routes/names.dart';
import 'package:rexolut/pages/splashscreen/controllers.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});

  Widget _buildSplashScreen() {
    return Container(
      width: 175.w,
      margin: EdgeInsets.only(top: 350.h ),
      child: Column(
        children: [
          Image.asset(rexLogo)

        ],
      ),
    );

  }

  Widget _buildAuthButton(String authText) {
    return GestureDetector(
      child: Container(
        width: 220.w,
        height: 55.h,
        margin: EdgeInsets.only(top: 150.h),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: AppColor.surfaceTextColor),
            borderRadius: BorderRadius.circular(16)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              authText, textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),

      ),
      onTap:(){
        Get.toNamed(AppRoutes.SplashTwoPage);
      },

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
          _buildAuthButton('Get Started'),
          ],
        ),
      ),

    );
  }

}