import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/common/routes/names.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/constants/topography/textstrings.dart';
import '../../utils/widgets/appbar.dart';
import '../homepage/view.dart';
import 'controller.dart';

class TermsAndConditions extends GetView<TermsAndConditionsControllers> {
  TermsAndConditions({super.key});
  final RxBool isChecked = false.obs;

  Widget _buildPageHeader(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 17.w, right: 17.w),
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: AppColor.mainTextColor,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Read the following terms and click\ncontinue to proceed',
              style: TextStyle(
                  color: AppColor.mainTextColor,
                  fontSize: 10.6.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.6,
                  wordSpacing: -4),
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Important Information',
              style: TextStyle(
                  color: AppColor.mainTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              termsAndConditions,
              style: TextStyle(
                  color: AppColor.mainTextColor,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.6,
                  wordSpacing: -4),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoundCheckBox() {
    return Container(
      width: 330.w,
      height: 44.h,
      margin: EdgeInsets.only(top: 30.h),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColor.mainTextColor,
          ),
          borderRadius: BorderRadius.circular(8.w)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            RoundCheckBox(
              onTap: (selected) {
                isChecked.value = selected!;
              },
              size: 25,
              checkedColor: Colors.green, // Change color when selected
            ),
            const SizedBox(width: 10),
            Text(
              'I have read the above information',
              style: TextStyle(
                color: AppColor.mainTextColor,
                fontSize: 11.sp,
                wordSpacing: -4,
                letterSpacing: -0.6,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Obx(() {
      return GestureDetector(
        onTap: isChecked.value
            ? () {
                Get.offAllNamed(AppRoutes.homePage);
              }
            : null,
        child: Container(
          width: 330.w,
          height: 43.h,
          margin: EdgeInsets.only(top: 15.h),
          decoration: ShapeDecoration(
            color: isChecked.value
                ? AppColor.mainColor
                : AppColor.mainTextColor, // Change color when selected
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
        ), // Disable onTap when checkbox is not selected
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: Center(
        child: Column(
          children: [
             RexAppBar(onTap: () {
               Get.back();
             },),
            _buildPageHeader('Terms & Conditions'),
            _buildRoundCheckBox(),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }
}
