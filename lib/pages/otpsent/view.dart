import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../common/constants/colors/colors.dart';
import 'controllers.dart';

class OtpSentScreen extends GetView<OtpSentScreenController> {
  const OtpSentScreen({super.key});

  Widget _buildSvg() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 260.h),
            child: SvgPicture.asset('assets/amico.svg')),
        Container(
            margin: EdgeInsets.only(top: 30.h),
            child: Text(
              "OTP Sent",
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColor.surfaceTextColor,
                fontWeight: FontWeight.w700,
              ),
            )),
        Container(
            margin: EdgeInsets.only(top: 15.h),
            width: 325.w,
            child: Text(
              "Please check your mobile phone for an OTP to reset your account",
              style: TextStyle(
                fontSize: 13.sp,
                color: AppColor.surfaceTextColor,
                fontWeight: FontWeight.w400,
                wordSpacing: -2.5,
                letterSpacing: -0.9,
              ),
              textAlign: TextAlign.center,
            )),


      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: Center(
        child: Column(
          children: [_buildSvg()],
        ),
      ),
    );
  }
}
