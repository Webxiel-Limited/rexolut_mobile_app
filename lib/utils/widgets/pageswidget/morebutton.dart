import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rexolut/common/constants/imageStrings/imageStrings.dart';
import 'package:unicons/unicons.dart';

import '../../../common/constants/colors/colors.dart';
import '../../../common/routes/names.dart';

class ButtonMore extends StatelessWidget {
  const ButtonMore({
    super.key,
  });

  Widget _buildCardButton() {
    return Container(
      width: 329.w,
      height: 134.h,
      margin: EdgeInsets.all(25.h),
      decoration: ShapeDecoration(
          color: AppColor.highlightColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.r))),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 14.h, left: 24.w),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Our Crypto Cards are here!',
                style: TextStyle(
                  color: AppColor.surfaceColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 9.h, left: 24.w),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Complete your account setup to start your seamless online purchasing spree.',
                style: TextStyle(
                  color: AppColor.surfaceColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.h, left: 24.w),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 111.w,
                height: 38.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColor.buttonColor,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColor.surfaceTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMoreIcons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildHomeIconWithText(
              UniconsLine.setting,
              'Settings',
              () {
                Get.offNamed(AppRoutes.settingsPage);
              },
            ),
            _buildHomeIconWithText(
              FontAwesomeIcons.peopleGroup,
              'Community',
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
              () {},
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildHomeIconWithText(
              Icons.card_giftcard,
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
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildHomeIconWithText(
              UniconsLine.megaphone,
              'Refer & Earn',
              () {},
            ),
            _buildHomeIconWithText(
              FontAwesomeIcons.legal,
              'Legal',
              () {},
            ),
            _buildHomeIconWithText(
              FontAwesomeIcons.headset,
              'Support',
              () {},
            ),
            _buildHomeIconWithText(
              Icons.star_border,
              'Rate App',
              () {

              },
            ),
          ],
        ),
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

  Widget _buildSecondCard() {
    return Stack(
      children: [
        Container(
          width: 329.w,
          height: 85.h,
          margin: EdgeInsets.all(25.h),
          decoration: ShapeDecoration(
              color: AppColor.highlightColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.r))),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.h, left: 130.w),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Refer & Earn',
                    style: TextStyle(
                      color: AppColor.surfaceColor,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                width: 149.w,
                margin: EdgeInsets.only(top: 1, left: 100.w),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Say a word about us and win amazing referral prizes',
                    style: TextStyle(
                      color: AppColor.surfaceColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 33.h,
          left: 35.w,
          child: Image.asset(
            rexMegaphone,
          ),
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
            _buildCardButton(),
            SizedBox(height: 12.h,),
            _buildMoreIcons(),
            SizedBox(height: 12.h,),
            _buildSecondCard(),

          ],
        ),
      ),
    );
  }
}
