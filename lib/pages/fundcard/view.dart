import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rexolut/utils/widgets/appbar.dart';
import 'package:rexolut/utils/widgets/fundingcardcountry.dart';
import 'package:rexolut/utils/widgets/keypad.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import 'controllers.dart';

class FundCard extends GetView<FundCardController> {
  FundCard({super.key});
  final RxBool isChecked = false.obs;
  final FocusNode _inputFocusNode = FocusNode();
  final RxBool isTextFieldFocused = false.obs;

  Widget _fundingInput(FocusNode inputFocusNode) {
    return Container(
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      width: 300.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColor.highlightColor, width: 2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150.w,
            child: FundingCountryDropDown(
              width: 150,
              height: 45,
              containerColor: AppColor.appbarColor,
              borderColor: AppColor.appbarColor,
            ),
          ),
          SizedBox(
            width: 10.h,
          ),
          SizedBox(
            width: 120.w,
            height: 35.h,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10.w, top: 20.h),
                fillColor: AppColor.offTextColor2,
                hintStyle: TextStyle(
                  color: AppColor.surfaceTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -1.5,
                  wordSpacing: -3,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColor.offTextColor2,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              controller: controller.inputController,
              focusNode: inputFocusNode,
              showCursor: false,
            ),
          ),
        ],
      ),
    );
  }

  Widget _fundingMessage(String fundedAmount) {
    return Container(
      margin: EdgeInsets.all(15.h),
      child: Obx(
            () => Text(
          isChecked.value
              ? 'Your Card Balance after funding will be \$${controller.inputController.text}'
              : ' ',
          style: TextStyle(
            color: AppColor.mainTextColor,
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
            letterSpacing: -1.5,
            wordSpacing: -1,
          ),
        ),
      ),
    );
  }


  Widget _buildFundCheckbox() {
    return Center(
      child: Container(
        width: 330.w,
        height: 44.h,
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundCheckBox(
              onTap: (selected) {
                isChecked.value = selected!;
              },
              size: 25,
              checkedColor: AppColor.mainColor,
            ),
            SizedBox(width: 10.w),
            Text(
              'I acknowledge that I have Read all the Terms\nand Conditions',
              style: TextStyle(
                color: AppColor.mainTextColor,
                fontSize: 10.sp,
                wordSpacing: -4,
                letterSpacing: -0.6,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _fundButton() {
    return Obx(() {
      return GestureDetector(
        onTap: isChecked.value
            ? () {
          Get.offAllNamed(
            AppRoutes.fundSuccessPage,
            arguments: controller.inputController.text,
          );
        }
            : null,
        child: Container(
          width: 250.w,
          height: 43.h,
          margin: EdgeInsets.only(top: 15.h),
          decoration: ShapeDecoration(
            color: isChecked.value
                ? AppColor.highlightColor
                : AppColor.mainTextColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10.r),
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
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          text: 'Fund Card',
          fontSize: 16.sp,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _fundingInput(_inputFocusNode),
              _fundingMessage(controller.inputController.text),
              SizedBox(height: 15.h),
              Container(
                margin: EdgeInsets.only(
                  top: controller.isTextFieldFocused.value ? -220.h : 0,
                ),
                child: Column(
                  children: [
                    _buildFundCheckbox(),
                    _fundButton(),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Keypad(
                controller: controller.inputController,
                focusNode: _inputFocusNode,
                isVisible: controller.isTextFieldFocused.value,
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
