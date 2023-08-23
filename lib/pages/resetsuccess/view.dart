import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/constants/imageStrings/imageStrings.dart';
import 'controllers.dart';

class PasswordResetSuccess extends GetView<PasswordResetSuccessController> {
  const PasswordResetSuccess({super.key});


  Widget _buildSuccessSvg() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 260.h),
            child: SvgPicture.asset('assets/Frame.svg')),
        Container(
            margin: EdgeInsets.only(top: 60.h),
            child: Text(
              "Password Reset Successful",
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
              "Your account is now secure. Login to enjoy benefits of using Rexolut",
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
          children: [_buildSuccessSvg()],
        ),
      ),
    );
  }
}
