import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/utils/widgets/cardbutton.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import 'controllers.dart';

class FundingSuccess extends GetView<FundingSuccessController> {
  const FundingSuccess({super.key});

  Widget _buildSuccessSvg() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 170.h),
            child: SvgPicture.asset('assets/Frame.svg')),
        Container(
            margin: EdgeInsets.only(top: 80.h),
            child: Text(
              "Card Funded",
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColor.surfaceTextColor,
                fontWeight: FontWeight.w700,
              ),
            )),
        Container(
            margin: EdgeInsets.only(top: 15.h),
            width: 325.w,
            child: Text(
              "You can now make all your payments with ease!",
              style: TextStyle(
                fontSize: 13.sp,
                color: AppColor.surfaceTextColor,
                fontWeight: FontWeight.w400,
                wordSpacing: -2.5,
                letterSpacing: -0.9,
              ),
              textAlign: TextAlign.center,
            )),
      ],
    );
  }

  Widget _buildFundingSuccessButton() {
    return Container(
        margin: EdgeInsets.only(top: 120.h),
        child: CardButton(
            onTap: () {
              Get.offAllNamed(
                AppRoutes.cardFunded,
              );
            },
            text: 'Done',
            width: 250.w));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: Center(
        child: Column(
          children: [
            _buildSuccessSvg(),
            _buildFundingSuccessButton(),
          ],
        ),
      ),
    );
  }
}
