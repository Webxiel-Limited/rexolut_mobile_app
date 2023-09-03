import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rexolut/utils/widgets/iconswithtext.dart';
import 'package:unicons/unicons.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import '../../utils/widgets/pageswidget/rexcard.dart';
import '../createcards/controller.dart';
import 'controller.dart';

class CardFunded extends GetView<CardFundedController> {
  CardFunded({super.key});
  final CreateCardController cardMoneyController =
      Get.put(CreateCardController());

  Widget _buildIconsText() {
    return Container(
      margin: EdgeInsets.only(top: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconsWithText(
              iconData: FontAwesomeIcons.plus,
              text: 'TOP UP',
              onPressed: () {
                Get.offAllNamed(AppRoutes.fundCardPage);
              }),
          IconsWithText(
              iconData: FontAwesomeIcons.minus,
              text: 'WITHDRAW ',
              onPressed: () {})
        ],
      ),
    );
  }

  Widget _buildCardContainer() {
    return Container(
        margin: EdgeInsets.only(right: 30.w, left: 30.w),
        child: RexCard(cardMoneyController: cardMoneyController));
  }

  Widget _buildCardDetail({
    required String title,
    required String value,
    required VoidCallback onCopy,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            letterSpacing: -1.0,
            color: AppColor.offTextColor2,
            wordSpacing: -2.5,
          ),
        ),
        SizedBox(height: 2.h), // Adjust the height here
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.mainTextColor,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.8,
                  wordSpacing: -2.5,
                ),
                maxLines: null,
              ),
            ),
            IconButton(
              icon: Icon(Icons.copy, size: 10.sp, color: AppColor.highlightColor,),
              onPressed: onCopy,
            ),
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }



  Widget _buildCardContainerDetails(String cardHolderName, String cardNumber,
      String expiryDate, String billingAddress, String zipCode, String securityNumber) {
    return Container(
      padding: EdgeInsets.only(left: 30.r, right: 30.r, bottom: 40.r),
      margin: EdgeInsets.only(top: 30.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColor.secondSurfaceColor3,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15.h, bottom: 30.h),
            child: Text(
              "CARD DETAILS",
              style: TextStyle(
                  color: AppColor.highlightColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.8,
                  wordSpacing: -2.5),
            ),
          ),
          _buildCardDetail(
            title: 'Name on Card',
            value: cardHolderName,
            onCopy: () {
              // Implement the copy functionality here
            },
          ),
          SizedBox(height: 12.h),
          _buildCardDetail(
            title: 'Card Number',
            value: cardNumber,
            onCopy: () {
              // Implement the copy functionality here
            },
          ),
          SizedBox(height: 12.h),
          _buildCardDetail(
            title: 'Expiry Date',
            value: expiryDate,
            onCopy: () {
              // Implement the copy functionality here
            },
          ),
          SizedBox(height: 12.h),
          _buildCardDetail(
            title: 'CVC',
            value: securityNumber,
            onCopy: () {
              // Implement the copy functionality here
            },
          ),
          SizedBox(height: 12.h),
          _buildCardDetail(
            title: 'Billing Address',
            value: billingAddress,
            onCopy: () {
              // Implement the copy functionality here
            },
          ),

          SizedBox(height: 12.h),
          _buildCardDetail(
            title: 'Zip Code',
            value: zipCode,
            onCopy: () {
              // Implement the copy functionality here
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      appBar: AppBar(
        backgroundColor: AppColor.surfaceColor,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.backward, color: AppColor.highlightColor),
          onPressed: () {
            Get.offAllNamed(AppRoutes.homePage);
          },
        ),
        elevation: 0,
        title: Text(
          "Virtual Card Details",
          style: TextStyle(
            color: AppColor.highlightColor,
            fontSize: 21.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            _buildCardContainer(),
            _buildIconsText(),
            _buildCardContainerDetails(
              'John Doe',
              '1234 5678 9012 3456',
              '12/24',
              '123 Main St, City, Country, Country, Country',
              '12345',
              '532'
            ),
          ],
        ),
      ),
    );
  }
}
