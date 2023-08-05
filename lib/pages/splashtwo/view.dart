import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rexolut/common/constants/imageStrings/imageStrings.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import '../../customPaint/paint.dart';
import 'controllers.dart';

class SplashTwo extends GetView<SplashTwoController> {
  const SplashTwo({super.key});

  Widget _buildHeader(){
    return Container(
      width: 340.w,
      margin: EdgeInsets.only(top: 150.h, left: 25.w),
      child: Column(
        children:  [
          Text(
            'Easily make payments with Crypto',
            style: TextStyle(
              color: Colors.white,
              fontSize: 53.sp,
              fontWeight: FontWeight.w700,

            ),
            textAlign: TextAlign.left,
          ),

        ],
      ),
    );
  }

  Widget _buildSplashTexts() {
    return Container(
      width: 339.w,
      margin: EdgeInsets.only(top: 100.h),
      child: Column(
        children:  [
          Text(
            'Bills Payment just Got Easier!',
            style: TextStyle(

              color: AppColor.mainColor,
              fontSize: 23.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 15.h,),
          Text(
            'Finally, you can now make your basic bills payment\n with your crypto assets',
            textAlign: TextAlign.center,

            style: TextStyle(
              color: Colors.white,
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),

    );
  }

  Widget _buildButtonOverlay() {
    return Container(
      width: 400.w,
      height: 220.h,
      child: Stack(
        children: [
          Positioned(
            left: 109.w,
            top: 56.h,
            child: SizedBox(
              width: 150.w,
              height: 150.w,
              child: CustomPaint(
                painter: SemiArcPainter(),
              ),
            ),
          ),
          Positioned(
            top: 80.h,
            left: 135.w,
            child: GestureDetector(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 99.w,
                  height: 99.h,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: CircleBorder(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_forward_outlined,
                        size: 37.w,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Get.toNamed(AppRoutes.SlashThreePage);
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: Center(
        child: Column(
          children: [
            _buildHeader(),
            _buildSplashTexts(),
            _buildButtonOverlay()
          ],
        ),
      ),

    );
  }

}