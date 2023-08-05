import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/constants/imageStrings/imageStrings.dart';
import '../../common/routes/names.dart';
import 'controller.dart';

class SplashFour extends GetView<SplashFourController> {
  const SplashFour({super.key});

  Widget _buildEllipse(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    return SizedBox(
      width: width + 500.w,
      height: 480.h,
      child: Stack(
        children: [
          Positioned(
            top: -90.h,
            left: -90.w,
            child: Center(
              child: Opacity(
                opacity: 0.20,
                child: Container(
                  width: 550.w,
                  height: 550.w,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(
                        side: BorderSide(
                            width: 1.w, color: AppColor.highlightColor)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -20.h,
            left: -30.w,
            child: Center(
              child: Opacity(
                opacity: 0.20,
                child: Container(
                  width: 420.w,
                  height: 420.h,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.00, -2.00),
                      end: const Alignment(0, 1),
                      colors: [
                        AppColor.secondSurfaceColor.withOpacity(0.5),
                        const Color(0x00FDFFFE)
                      ],
                    ),
                    shape: const CircleBorder(
                        side: BorderSide(
                            width: 1, color: AppColor.highlightColor)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40.h,
            left: 30.w,
            child: Center(
              child: Opacity(
                opacity: 0.20,
                child: Container(
                  width: 300.w,
                  height: 300.h,
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(
                        side: BorderSide(
                            width: 1, color: AppColor.highlightColor)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 110.h,
            left: 98.w,
            child: Opacity(
              opacity: 0.20,
              child: Container(
                width: 163.w,
                height: 163.h,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(
                      side:
                          BorderSide(width: 1, color: AppColor.highlightColor)),
                ),
              ),
            ),
          ),
          Positioned(
            top: 175.h,
            left: 160.w,
            child: const Icon(
              Icons.search,
              size: 50,
            ),
          ),
          Positioned(
            top: 15.w,
            left: 20.w,
            child: Container(
              width: 50.70.w,
              height: 50.70.w,
              decoration: BoxDecoration(
                color: AppColor.secondSurfaceColor3,
                borderRadius: BorderRadius.all(Radius.circular(60.w)),
              ),
              child: Image(
                width: 50.70.w,
                height: 50.70.w,
                fit: BoxFit.cover,
                image: const AssetImage(ellipse),
              ),
            ),
          ),
          Positioned(
              top: 45.w,
              left: 55.w,
              child: Container(
                height: 17.w,
                width: 17.w,
                decoration: BoxDecoration(
                  color: AppColor.mainColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.w),
                  ),
                ),
              )),
          Positioned(
            top: 110.w,
            left: 220.w,
            child: Container(
              width: 50.70.w,
              height: 50.70.w,
              decoration: BoxDecoration(
                color: AppColor.secondSurfaceColor3,
                borderRadius: BorderRadius.all(Radius.circular(60.w)),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.mainColor.withOpacity(0.5),
                      spreadRadius: 4.w,
                      blurRadius: 8.w,
                      offset: const Offset(0, 1)),
                ],
              ),
              child: Image(
                width: 50.70.w,
                height: 50.70.w,
                fit: BoxFit.cover,
                image: const AssetImage(ellipseTwo),
              ),
            ),
          ),
          Positioned(
              top: 140.w,
              left: 255.w,
              child: Container(
                height: 17.w,
                width: 17.w,
                decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.all(Radius.circular(40.w))),
              )),
          Positioned(
            top: 320.w,
            left: 160.w,
            child: Container(
              width: 50.70.w,
              height: 50.70.w,
              decoration: BoxDecoration(
                color: AppColor.secondSurfaceColor3,
                borderRadius: BorderRadius.all(Radius.circular(60.w)),
              ),
              child: Image(
                width: 50.70.w,
                height: 50.70.w,
                fit: BoxFit.cover,
                image: const AssetImage(ellipseThree),
              ),
            ),
          ),
          Positioned(
              top: 347.w,
              left: 197.w,
              child: Container(
                height: 17.w,
                width: 17.w,
                decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.all(Radius.circular(40.w))),
              )),
        ],
      ),
    );
  }

  Widget _buildSplashFourText() {
    return Column(children: [
      Text(
        'Buy/Sell Crypto in Minutes',
        style: TextStyle(
          color: AppColor.mainColor,
          fontSize: 22.sp,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 15.h,
      ),
      Text(
        'Seamless, Secured and Fast reliable P2P\nExchange community',
        style: TextStyle(
          color: AppColor.mainTextColor,
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    ]);
  }

  Widget _buildButtonOverlay() {
    return SizedBox(
      width: 400.w,
      height: 180.h,
      child: Stack(
        children: [
          Positioned(
            left: 110.w,
            top: 25.h,
            child: SizedBox(
              width: 150.w,
              height: 150.w,
              child: CustomPaint(
                painter: SemiArcPainter(),
              ),
            ),
          ),
          Positioned(
            top: 50.h,
            left: 135.w,
            child: GestureDetector(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 99.w,
                  height: 99.h,
                  decoration: const ShapeDecoration(
                      color: Colors.white, shape: OvalBorder()),
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
                Get.offNamed(AppRoutes.AuthDashboardPage);
              },
            ),
          )
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
            _buildEllipse(context),
            _buildSplashFourText(),
            _buildButtonOverlay(),
            // CircularProgress()
          ],
        ),
      ),
    );
  }
}

class SemiArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColor.surfaceTextColor // Set your desired color here
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7
      ..strokeCap = StrokeCap.round; // Set the line cap to round

    final rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2.2,
    );

    canvas.drawArc(
      rect,
      -0.4, // Adjust the starting angle to rotate the arc
      -5.6, // Adjust the angle to create the desired semi arc shape
      false, // Set to false to draw only the outline
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
