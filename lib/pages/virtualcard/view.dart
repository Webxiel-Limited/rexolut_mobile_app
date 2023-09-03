import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rexolut/utils/widgets/iconswithtext.dart';
import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import '../../utils/widgets/pageswidget/rexcard.dart';
import '../createcards/controller.dart';
import 'controller.dart';

class VirtualCardDetails extends GetView<VirtualCardDetailsController> {
  VirtualCardDetails({super.key});
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
        child: RexCard(cardMoneyController: cardMoneyController, fundedAmount: 'fundedAmount', ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      appBar: AppBar(
        backgroundColor: AppColor.surfaceColor,
        elevation: 0,
        automaticallyImplyLeading: false,
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

          ],
        ),
      ),
    );
  }
}
