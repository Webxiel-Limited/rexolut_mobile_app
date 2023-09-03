import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/common/constants/colors/colors.dart';
import 'package:rexolut/common/routes/names.dart';

import '../../utils/widgets/cardbutton.dart';
import 'controller.dart';


class Cards extends GetView<CardController> {
  const Cards({super.key});

  Widget _buildMockCard() {
    return Container(
      width: 352.w,
      height: 300.h,
      margin: EdgeInsets.only(left: 7.h, top: 85.h),
      child: Transform.rotate(
        angle: 3.14159 / -2,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0.h,
              child: Container(
                width: 301.w,
                height: 173.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xFF121212),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 60.h, left: 20.w, right: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "0123 4567 8964 7654",
                                style: TextStyle(
                                  color: AppColor.surfaceTextColor,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 2.h, left: 20.w, right: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Emmanuel Edeh",
                                style: TextStyle(
                                  color: AppColor.surfaceTextColor,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: 250.w,
                      top: 70.h,
                      child: Transform.rotate(
                        angle: -3.14159 / 2,
                        child: Image.asset(
                          'assets/images/image-5.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 50.w,
              top: 113.h,
              child: Container(
                width: 301.w,
                height: 173.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColor.highlightColor,
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 65.h, left: 20.w, right: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "0123 4567 8964 7654",
                                style: TextStyle(
                                  color: AppColor.surfaceColor,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 2.h, left: 20.w, right: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Emmanuel Edeh",
                                style: TextStyle(
                                  color: AppColor.surfaceColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: 250.w,
                      top: 74.h,
                      child: Transform.rotate(
                        angle: -3.14159 / 2,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/image-5.png',
                            ),
                            Positioned.fill(
                                child: Container(
                              color: AppColor.mainColor.withOpacity(0.4),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardHeaderDesc() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 40.w, right: 40, top: 35.h),
          child: Text(
            'Make Payments Seamlessly from your Crypto wallet',
            style: TextStyle(
              color: AppColor.surfaceTextColor,
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.h, left: 35, right: 35),
          child: Text(
            'Instantly get cash for crypto. Send it to your bank account, or spend online and in-store with your Beta Visa Debit card',
            style: TextStyle(
                color: AppColor.surfaceTextColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  Widget _buttons(){
    return Column(
      children:[
        SizedBox(height: 20.h,),
        CardButton(
          onTap: () {
            Get.offNamed(AppRoutes.createCardPage);
          }, text: 'Create New Card', width: 250.w,
        ),

        SizedBox(height: 20.h,),

        CardButton(
          onTap: () {
            Get.offNamed(AppRoutes.cardFunded);
          }, text: 'My Cards', width: 250.w,
        ),
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: Center(
          child: Column(
        children: [
          _buildMockCard(),
          _buildCardHeaderDesc(),
          _buttons()
        ],
      )),
    );
  }
}

