import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/common/routes/names.dart';
import 'package:rexolut/utils/widgets/headertextandparagraph.dart';

import '../../common/constants/colors/colors.dart';
import '../../utils/widgets/appbar.dart';
import 'controller.dart';

class ForgotPasswordTile extends GetView<ForgotPasswordTileController> {
  const ForgotPasswordTile({super.key});


  Widget _buildListTile(
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80.h,
        width: 325.w,
        decoration: BoxDecoration(
          color: AppColor.tileColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Icon(
                icon,
                size: 25.sp,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(22.0),
              child: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
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
           RexAppBar(
            onTap: () {  
              Get.offNamed(AppRoutes.LoginScreenPage);
            },
          ),
          const HeaderTextForAppBar(text: 'Forgot Password'),
          const HeaderParagraph(
              text: 'Choose where you want the OTP\nto be sent'),
          SizedBox(height: 30.h),
          _buildListTile(
              icon: Icons.email_outlined,
              title: 'Via email',
              onTap: () {
                Get.offNamed(AppRoutes.emailRecoveryPage);
              }),
          SizedBox(height: 12.h),
          _buildListTile(
              icon: Icons.phone_android_rounded,
              title: 'Via sms',
              onTap: () {
                Get.offNamed(AppRoutes.smsRecoveryPage);
              }),
        ],
      )),
    );
  }
}
