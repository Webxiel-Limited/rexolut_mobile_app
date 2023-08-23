import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/constants/imageStrings/imageStrings.dart';
import '../../common/routes/names.dart';
import 'controller.dart';

class AuthDashBoard extends GetView<AuthDashboardController> {
  const AuthDashBoard({super.key});

  Widget _buildSplashScreen() {
    return Container(
      width: 170.w,
      margin: EdgeInsets.only(top: 185.h, bottom: 60.h),
      child: Column(
        children: [Image.asset(rexLogo)],
      ),
    );
  }

  Widget _buildAuthButton(String authText, String routeName) {
    return GestureDetector(
      child: Container(
        width: 220.w,
        height: 55.h,
        margin: EdgeInsets.only(top: 50.h),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side:
                  const BorderSide(width: 1, color: AppColor.surfaceTextColor),
              borderRadius: BorderRadius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              authText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.sp,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      onTap: () {

        Get.toNamed(routeName);
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
            _buildAuthButton('Register', '/register'),
            _buildAuthButton('Login', '/login')
          ],
        ),
      ),
    );
  }
}
