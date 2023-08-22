import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/common/constants/colors/colors.dart';

import '../../common/routes/names.dart';
import 'controller.dart';

class CompletedKyc extends GetView<CompletedKycController>{
  const CompletedKyc({super.key});

  Widget _buildShield() {
    return Container(
      margin: EdgeInsets.only(top: 140.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(FontAwesomeIcons.shield, color: AppColor.shield, size: 200.sp,),
          Positioned(
            top: 8.h,
            child:Icon(FontAwesomeIcons.shield, color: AppColor.shield2, size: 185.sp,),
          ),
          Positioned(
            top: 10.h,
            child:Icon(FontAwesomeIcons.shieldHalved, color: AppColor.mainColor, size: 175.sp,),
          ),
          Positioned(
            top: 55.h,
            left: 70.w,
            // child:Icon(Icons.check, color: AppColor.surfaceColor, size: 70.sp,weight: 900.0,),
            child: Text(
              String.fromCharCode(Icons.check.codePoint), // Use the Unicode code point for the check icon
              style: TextStyle(
                fontFamily: 'MaterialIcons', // Use the Material Icons font
                fontWeight: FontWeight.w900, // Set the desired font weight
                fontSize: 75.sp,
                color: AppColor.surfaceColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 50.h),
          child: Text(
            "Completed! 🎉",
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.surfaceTextColor,
              letterSpacing: -0.9,
            ),
          ),
        ),
        SizedBox(height: 20.h,),
        Container(
          width: 230.w,
          height: 45.h,
          decoration: BoxDecoration(
            color: AppColor.highlightColor,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: AppColor.highlightColor,
            ),
          ),
          child: TextButton(
            onPressed: () {
              Get.toNamed(AppRoutes.homePage);
            },
            child:  Text(
              'Back to Home',
              style: TextStyle(
                color: AppColor.surfaceColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appbarColor,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: AppColor.surfaceColor,
      body: Center(
        child: Column(
          children: [
            _buildShield(),
            _buildText(),
          ],
        ),
      ),
    );
  }

}

