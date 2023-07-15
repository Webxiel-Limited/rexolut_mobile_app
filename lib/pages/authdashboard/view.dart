import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rexolut/pages/authdashboard/controller.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/constants/imageStrings/imageStrings.dart';

class AuthDashBoard extends GetView<AuthDashboardController> {
  const AuthDashBoard({super.key});

  Widget _buildSplashScreen() {
    return Container(
      width: 170.w,
      margin: EdgeInsets.only(top: 185.h, bottom: 60.h),
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
        margin: EdgeInsets.only(top:50.h),
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
              style:  TextStyle(
                color: Colors.white,
                fontSize: 13.sp,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),

      ),
      onTap:(){
        // Get.toNamed(AppRoutes.SplashTwoPage);
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
          _buildAuthButton('Register'),
            _buildAuthButton('Login')

          ],
        ),
      ),

    );
  }

}