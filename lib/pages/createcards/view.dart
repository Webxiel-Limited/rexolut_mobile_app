import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/common/constants/colors/colors.dart';
import 'package:rexolut/pages/cards/controller.dart';

import 'controller.dart';

class CreateCards extends GetView<CreateCardController> {
  CreateCards({super.key});

  final CardController cardMoneyController = Get.put(CardController());

  Widget _createCards() {
    return Container(
      width: 301.w,
      height: 173.h,
      margin: EdgeInsets.only(top: 33.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColor.highlightColor,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.h, left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Balance",
                      style: TextStyle(
                        color: AppColor.surfaceColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h, left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cardMoneyController.displayCardAmount,
                      style: TextStyle(
                          color: AppColor.surfaceColor,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: -14,
                          letterSpacing: -2.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 230.w,
            top: 10.h,
            child: Container(
              padding: EdgeInsets.all(5.r),
              decoration: BoxDecoration(
                  color: AppColor.surfaceTextColor,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Text(
                'VIRTUAL CARD',
                style: TextStyle(
                    fontSize: 7.sp,
                    color: AppColor.surfaceColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createCardInput() {
    return Container(
      margin: EdgeInsets.only(top: 50.h),
      width: 300.w,
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColor.highlightColor, width: 2),),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Name on Card:',
            style: TextStyle(
              color: AppColor.mainTextColor,
              fontSize: 9.sp,
              letterSpacing: -0.4,
              wordSpacing: -1.5,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.surfaceColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.arrowLeftLong,
            color: AppColor.surfaceTextColor,
          ),
          onPressed: () => Get.back(),
        ),
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
          _createCards(),
          _createCardInput(),
        ],
      )),
    );
  }
}
