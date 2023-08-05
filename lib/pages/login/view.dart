import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import '../../utils/widgets/appbar.dart';
import 'controller.dart';

class LoginScreen extends GetView<LoginScreenController> {
  const LoginScreen({super.key});

  Widget _buildWelcomeText() {
    return Container(
      margin: EdgeInsets.only(top: 110.h),
      width: 385.w,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 43.w, bottom: 7.h),
              child: Text(
                'Welcome Emmanuel,',
                style: TextStyle(
                  color: AppColor.mainTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Text(
            'Log into your account to continue making money',
            style: TextStyle(
              color: AppColor.mainTextColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 45.w, top: 55.h),
              child: Text(
                'Enter your Pin from Authenticator',
                style: TextStyle(
                  color: AppColor.mainTextColor,
                  fontSize: 14.w,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPinTextField(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 390.w,
          margin: EdgeInsets.only(left: 20.w, top: 25.h),
          child: OtpTextField(
            numberOfFields: 4,
            fieldWidth: 55.w,
            margin: EdgeInsets.only(right: 18.w),
            borderColor: AppColor.mainTextColor,
            showFieldAsBox: true,
            borderRadius: BorderRadius.circular(18.w),
            cursorColor: AppColor.secondSurfaceColor3,
            obscureText: true,
            textStyle: const TextStyle(color: AppColor.mainTextColor),
            focusedBorderColor: AppColor.highlightColor,
            // onSubmit: (String pin){
            //   showDialog(context: context, builder: (context){
            //     return AlertDialog(title: Text('Authentication Code', ),
            //     content: Text('Code entered is $pin'),);
            //   });
            // },
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        TextButton(
          onPressed: () {
            Get.toNamed(AppRoutes.forgotPasswordTilePage);
          },
          child: Text(
            'Forgot Pin?',
            style: TextStyle(
                color: AppColor.mainTextColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  Widget _buildAuthButton() {
    return GestureDetector(
      child: Container(
        width: 220.w,
        height: 55.h,
        margin: EdgeInsets.only(top: 200.h),
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
              'Login',
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
        Get.toNamed(AppRoutes.homePage);
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
             RexAppBar(onTap: () {
               Get.offNamed(AppRoutes.AuthDashboardPage);

             },

             ),
            _buildWelcomeText(),
            _buildPinTextField(context),
            _buildAuthButton()
          ],
        ),
      ),
    );
  }
}
