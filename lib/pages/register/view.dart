import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:unicons/unicons.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import '../../utils/widgets/appbar.dart';
import '../../utils/widgets/formheadertext.dart';
import 'controller.dart';

class RegisterScreen extends GetView<RegisterScreenController> {
  const RegisterScreen({super.key});


  Widget _buildRegHeader() {
    return Container(
      margin: EdgeInsets.only(top: 10.h, left: 30.w, bottom: 10.h),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Create your Account to continue',
          style: TextStyle(
              color: AppColor.mainColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -1.5,
              wordSpacing: -5),
        ),
      ),
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        const FormTitleText(
          title: 'Full Name',
        ),
        SizedBox(
          width: 325.w,
          height: 45.h,
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.w, top: 20.h),
              hintStyle: TextStyle(
                color: AppColor.surfaceTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -1.5,
                wordSpacing: -3,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.surfaceTextColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.highlightColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            cursorColor: AppColor.mainTextColor,
          ),
        ),
        const FormTitleText(
          title: 'Email Address',
        ),
        SizedBox(
          width: 325.w,
          height: 45.h,
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.w, top: 20.h),
              hintStyle: TextStyle(
                color: AppColor.surfaceTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -1.5,
                wordSpacing: -3,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.surfaceTextColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.highlightColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            cursorColor: AppColor.mainTextColor,
          ),
        ),
        const FormTitleText(
          title: 'Password',
        ),
        SizedBox(
          width: 325.w,
          height: 45.h,
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.w, top: 20.h),
              hintStyle: TextStyle(
                color: AppColor.surfaceTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -1.5,
                wordSpacing: -3,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  UniconsLine.eye,
                  color: AppColor.surfaceTextColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.surfaceTextColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.highlightColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            cursorColor: AppColor.mainTextColor,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            obscureText: true,
            obscuringCharacter: '*',
          ),
        ),
        const FormTitleText(
          title: 'Confirm Password',
        ),
        SizedBox(
          width: 325.w,
          height: 45.h,
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.w, top: 20.h),
              hintStyle: TextStyle(
                color: AppColor.surfaceTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -1.5,
                wordSpacing: -3,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  UniconsLine.eye,
                  color: AppColor.surfaceTextColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.surfaceTextColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.highlightColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            cursorColor: AppColor.mainTextColor,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            obscureText: true,
            obscuringCharacter: '*',
          ),
        ),
        const FormTitleText(
          title: 'Phone Number',
        ),
        SizedBox(
          width: 325.w,
          height: 45.h,
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.w, top: 20.h),
              hintStyle: TextStyle(
                color: AppColor.surfaceTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -1.5,
                wordSpacing: -3,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.surfaceTextColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.highlightColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            cursorColor: AppColor.mainTextColor,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
      ],
    );
  }

  Widget _buildAuthRegButton() {
    return GestureDetector(
      child: Container(
        width: 220.w,
        height: 55.h,
        margin: EdgeInsets.only(top: 50.h),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side:
                  const BorderSide(width: 2, color: AppColor.surfaceTextColor),
              borderRadius: BorderRadius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Register',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Get.toNamed(AppRoutes.otpScreenPage, arguments: {'source': 'register'});      },
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
           },),
          _buildRegHeader(),
          _buildFormField(),
          _buildAuthRegButton()
        ],
      )),
    );
  }
}
