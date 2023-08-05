import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/common/routes/names.dart';

import '../../common/constants/colors/colors.dart';
import '../../utils/widgets/appbar.dart';
import '../../utils/widgets/formheadertext.dart';
import '../../utils/widgets/headertextandparagraph.dart';
import 'controller.dart';

class SmsRecoveryScreen extends GetView<SmsRecoveryScreenController> {
  const SmsRecoveryScreen({super.key});

  Widget _buildNumberTextField(){
    return SizedBox(
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
    );
  }

  Widget _buildNumberSubmitButton() {
    return GestureDetector(

        child: Container(
          width: 325.w,
          height: 43.h,
          margin: EdgeInsets.only(top: 30.h),
          decoration: ShapeDecoration(
            color: AppColor.mainTextColor, // Change color when selected
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: AppColor.surfaceTextColor,
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
          Get.toNamed(AppRoutes.otpSentScreenPage); // Navigate to the next screen
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
             RexAppBar(onTap: () {
               Get.offNamed(AppRoutes.forgotPasswordTilePage); // Navigate to the previous screen
             },),
            const HeaderTextForAppBar(text: 'Via sms'),
            const HeaderParagraph(text: 'Input the number you want the\ncode to be sent to'),
            SizedBox(height: 20.h,),

            const FormTitleText(title: 'Phone Number'),
            _buildNumberTextField(),
            _buildNumberSubmitButton(),
          ],
        ),
      ),

    );
  }
}
