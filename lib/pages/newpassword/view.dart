import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/common/routes/routes.dart';
import 'package:unicons/unicons.dart';

import '../../common/constants/colors/colors.dart';
import '../../utils/widgets/appbar.dart';
import '../../utils/widgets/formheadertext.dart';
import '../../utils/widgets/headertextandparagraph.dart';
import 'controller.dart';

class NewPasswordScreen extends GetView<NewPasswordScreenController> {
  const NewPasswordScreen({super.key});

  Widget _buildNewPasswordField(){
    return Column(
      children: [
        const FormTitleText(title: 'Password'),

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

        const FormTitleText(title: 'Confirm Password'),


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
      ],
    );
  }

  Widget _buildNewSubmitButton() {
    return GestureDetector(

        child: Container(
          width: 325.w,
          height: 43.h,
          margin: EdgeInsets.only(top: 30.h),
          decoration: ShapeDecoration(
            color: AppColor.mainColor, // Change color when selected
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: AppColor.mainColor,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.surfaceColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Get.offAllNamed(AppRoutes.passwordResetSuccessPage); // Navigate to the homescreen
        }// Disable onTap when checkbox is not selected
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80.h,),
            const HeaderTextForAppBar(text: 'New Password'),
            const HeaderParagraph(text: 'Input your new password'),
            SizedBox(height: 20.h,),
            _buildNewPasswordField(),
            _buildNewSubmitButton(),
          ],
        ),
      ),
    );
  }
}
