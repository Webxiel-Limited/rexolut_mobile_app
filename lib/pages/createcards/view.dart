import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rexolut/common/constants/colors/colors.dart';
import 'package:rexolut/utils/widgets/cardbutton.dart';
import 'package:rexolut/utils/widgets/country.dart';

import '../../common/routes/names.dart';
import '../../utils/widgets/pageswidget/rexcard.dart';
import 'controller.dart';

class CreateCards extends GetView<CreateCardController> {
  CreateCards({super.key});

  final CreateCardController cardMoneyController =
      Get.put(CreateCardController());

  Widget _createCardInput() {
    return Container(
      margin: EdgeInsets.only(top: 50.h),
      width: 300.w,
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColor.highlightColor, width: 2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Text(
              'Name on Card:',
              style: TextStyle(
                color: AppColor.mainTextColor,
                fontSize: 9.sp,
                letterSpacing: -0.4,
                wordSpacing: -1.5,
              ),
            ),
          ),
          SizedBox(
            width: 200.w,
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

              // cursorColor: AppColor.mainTextColor,
              showCursor: false,
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    );
  }

  Widget _countrySelection() {
    return Container(
      margin: EdgeInsets.only(top: 30.h),
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      width: 300.w,
      // padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColor.highlightColor, width: 2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 25.w),
            child: Text(
              'Country:',
              style: TextStyle(
                color: AppColor.mainTextColor,
                fontSize: 9.sp,
                letterSpacing: -0.4,
                wordSpacing: -1.5,
              ),
            ),
          ),
          SizedBox(
            width: 210.w,
            child: CountryDropdownWidget(
              width: 150,
              height: 45,
              containerColor: AppColor.appbarColor, borderColor: AppColor.appbarColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.surfaceColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Create Card",
          style: TextStyle(
            color: AppColor.highlightColor,
            fontSize: 21.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: AppColor.surfaceColor,
      body: Center(
          child: Column(
        children: [
          RexCard(cardMoneyController: cardMoneyController, fundedAmount: 'fundedAmount',),
          _createCardInput(),
          _countrySelection(),
          SizedBox(height: 70.h,),
          CardButton(onTap: () {
            Get.offAllNamed(AppRoutes.virtualCardDetailsScreen);
          }, text: 'Fund Card', width: 300.w,),

        ],
      )),
    );
  }
}

