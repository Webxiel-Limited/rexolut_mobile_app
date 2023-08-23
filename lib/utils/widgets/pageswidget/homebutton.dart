import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rexolut/pages/homepage/controller.dart';
import 'package:unicons/unicons.dart';

import '../../../common/constants/colors/colors.dart';
import '../../../common/routes/names.dart';

class ButtonHome extends StatelessWidget {
  ButtonHome({
    super.key,
  });
  final HomeScreenController moneyController = Get.put(HomeScreenController());

  Widget _buildPortfolioBalance() {
    return Column(
      children: [
        SizedBox(
          height: 46.h,
        ),
        Text(
          'Portfolio Balance',
          style: TextStyle(
              color: AppColor.highlightColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700),
        ),
        Center(
          child: Obx(() {
            return Text(
              moneyController.displayAmount,
              style: TextStyle(
                  color: AppColor.surfaceTextColor,
                  fontSize: 47.sp,
                  fontWeight: FontWeight.w700,
                  // letterSpacing: -0.9,
                  wordSpacing: -14),
            );
          }),
        ),
        Text(
          '+3.35%',
          style: TextStyle(
              color: AppColor.mainColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -1.0),
        ),
      ],
    );
  }

  Widget _buildMoneySentReceiveIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildIconWithText(UniconsLine.arrow_up_right, 'SEND', () {}),
        _buildIconWithText(UniconsLine.arrow_down_left, 'RECEIVE', () {}),
        _buildIconWithText(Icons.currency_exchange, 'CONVERT', () {}),
      ],
    );
  }

  Widget _buildIconWithText(
      IconData iconData, String text, VoidCallback onPressed) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 45.w,
            height: 45.w,
            decoration: ShapeDecoration(
              shape: CircleBorder(
                side: BorderSide(
                  width: 1.w,
                  color: AppColor.highlightColor,
                ),
              ),
            ),
            child: Icon(
              iconData,
              size: 20.sp,
              color: AppColor.highlightColor,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          text,
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColor.highlightColor,
          ),
        ),
      ],
    );
  }

  Widget _buildHomeIcons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildHomeIconWithText(
              UniconsLine.exchange_alt,
              'P2P',
              () {},
            ),
            _buildHomeIconWithText(
              Icons.card_giftcard,
              'Gift Cards',
              () {},
            ),
            _buildHomeIconWithText(
              UniconsLine.robot,
              'A.I Trading',
              () {},
            ),
            _buildHomeIconWithText(
              Icons.credit_card,
              'Rex Cards',
              () {
                Get.toNamed(AppRoutes.cardPage);
              },
            ),
          ],
        ),
        SizedBox(
          height: 70.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildHomeIconWithText(
              FontAwesomeIcons.peopleGroup,
              'Community',
              () {},
            ),
            _buildHomeIconWithText(
              FontAwesomeIcons.cube,
              'NFT',
              () {},
            ),
            _buildHomeIconWithText(
              Icons.savings_outlined,
              'Rex Savings',
              () {},
            ),
            _buildHomeIconWithText(
              Icons.school_outlined,
              'Academy',
              () {},
            ),
          ],
        )
      ],
    );
  }

  Widget _buildHomeIconWithText(
      IconData iconData, String text, VoidCallback onPressed) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 42.w,
            height: 42.w,
            decoration: BoxDecoration(
                color: AppColor.appbarColor,
                borderRadius: BorderRadius.circular(10.r)),
            child: Icon(
              iconData,
              size: 25.sp,
              color: AppColor.highlightColor,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          text,
          style: TextStyle(
              fontSize: 9.sp,
              color: AppColor.mainTextColor,
              letterSpacing: -0.9,
              wordSpacing: -2.0),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: Center(
        child: ListView(
          children: [
            _buildPortfolioBalance(),
            SizedBox(
              height: 30.h,
            ),
            _buildMoneySentReceiveIcons(),
            SizedBox(
              height: 85.h,
            ),
            _buildHomeIcons(),
          ],
        ),
      ),
    );
  }
}
