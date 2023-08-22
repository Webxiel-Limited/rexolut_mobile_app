import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pinput/pinput.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import '../../utils/widgets/keypad.dart';
import 'controller.dart';

class OtpScreen extends GetView<OtpScreenController> {
  OtpScreen({super.key});
  final formKey = GlobalKey<FormState>();
  final TextEditingController pinController = TextEditingController();



  Widget _buildVerifyText() {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, bottom: 8.w),
            child: Text(
              'Verify OTP',
              style: TextStyle(
                color: AppColor.mainTextColor,
                fontSize: 19.sp,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, bottom: 5.h),
            child: Text(
              'Input the code that was sent to\nyour number',
              style: TextStyle(
                color: AppColor.mainTextColor,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.5,
                wordSpacing: -6,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSecurityText() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 25.w, top: 25.h, bottom: 10.h),
        child: Text(
          'OTP',
          style: TextStyle(
            color: AppColor.mainTextColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildPinTextField(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      margin: EdgeInsets.symmetric(horizontal: 17.w),
      textStyle: TextStyle(
          fontSize: 15.sp,
          color: AppColor.surfaceTextColor,
          fontWeight: FontWeight.w500),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.surfaceTextColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColor.highlightColor),
      borderRadius: BorderRadius.circular(10.r),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          child: Form(
            key: formKey,
            child: Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              controller: controller.pinController,
              obscureText: true,
              useNativeKeyboard: false,
              onChanged: (value) {
                controller.enteredPin.value = value;
              },
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isPinInputComplete = controller.enteredPin.value.length == 4;

    // Retrieve the argument passed from the source page
    final Map<String, dynamic> arguments = Get.arguments ?? {};
    final String source = arguments['source'];

    // Determine the redirection destination based on the source
    String redirectionRoute = AppRoutes.userLocationPage; // Default redirection route

    if (source == 'otpsent') {
      redirectionRoute = AppRoutes.newPasswordPage;
    } else if (source == 'register') {
      redirectionRoute = AppRoutes.userLocationPage;
    }
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildVerifyText(),
            _buildSecurityText(),
            _buildPinTextField(context),
            Column(
              children: [

                GestureDetector(
                  child: Container(
                    width: 310.w,
                    height: 43.h,
                    margin: EdgeInsets.only(top: 23.h),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: AppColor.surfaceTextColor,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.circular(7.w),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.surfaceTextColor,
                            fontSize: 13.sp,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Get.toNamed(redirectionRoute);
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                Obx(() {
                  return TextButton(
                    onPressed: () {
                      controller.resendOTP();
                    },
                    child: Column(
                      children: [
                        Text(
                          "Didn't get OTP?",
                          style: TextStyle(
                            color: AppColor.mainTextColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Resend in ${controller.getFormattedTime()}",
                          style: TextStyle(
                            color: AppColor.errorTextColor,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                Keypad(
                  controller: controller.pinController,
                  onChanged: (value) {
                    // Handle onChanged event of the Keypad
                  },
                  onDeletePressed: () {
                    // Handle onDeletePressed event of the Keypad
                    HapticFeedback.lightImpact();
                    if (controller.pinController.text.isNotEmpty) {
                      controller.pinController.text = controller.pinController.text
                          .substring(0, controller.pinController.text.length - 1);
                    }
                  },
                  maxLength: 4,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }}