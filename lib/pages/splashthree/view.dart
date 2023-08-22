import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/constants/imageStrings/imageStrings.dart';
import '../../common/constants/topography/textStyle.dart';
import '../../common/routes/names.dart';
import 'controllers.dart';

class SplashThree extends GetView<SplashThreeController> {
  const SplashThree({super.key});

  Widget _buildTopContainer() {
    return Container(
      height: 435.h,
      width: 463.w,
      decoration: const BoxDecoration(
        color: AppColor.mainColor,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 130.h),
            width: 86.w,
            height: 86.h,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.mic_rounded,
                  color: Colors.black,
                  size: 55,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            width: 328.w,
            child: Text(
              'How to connect my wallet to metamask app',
              style: AppTextStyle.bodyLargeBold,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 328.w,
            child: Container(
              width: 255.w,
              height: 120.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(rexWave))),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomContainer() {
    return Container(
      margin: EdgeInsets.only(top: 25.h),
      child: Column(
        children: [
          Text('Next Gen A.I Trade Assistant',
              style: TextStyle(
                  color: AppColor.mainColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 21.sp)),
          SizedBox(height: 26.h),
          SizedBox(
            width: 320.w,
            child: Text(
              'Now you can spot trades with voice and text command using our A.I Assistant.',
              style: TextStyle(
                  fontSize: 13.h,
                  fontWeight: FontWeight.w600,
                  color: AppColor.surfaceTextColor),
              textAlign: TextAlign.center,
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
            left: 110.w,
            top: 35.h,
            child: SizedBox(
              width: 150.w,
              height: 150.w,
              child: CustomPaint(
                painter: SemiArcPainter(),
              ),
            ),
          ),
          Positioned(
            top: 60.h,
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
                Get.toNamed(AppRoutes.SplashFourPage);
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
            _buildTopContainer(),
            _buildBottomContainer(),
            _buildButtonOverlay()
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
      -0.5, // Adjust the starting angle to rotate the arc
      -4.2, // Adjust the angle to create the desired semi arc shape
      false, // Set to false to draw only the outline
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
