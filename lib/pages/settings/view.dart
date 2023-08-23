import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rexolut/pages/settings/controller.dart';
import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import '../../utils/widgets/appbar.dart';
import '../../utils/widgets/pageswidget/settingstitle.dart';
import '../../utils/widgets/settings.dart';

class SettingScreen extends GetView<SettingsScreenController> {
  const SettingScreen({super.key});

  Widget _buildSettingsFirstRow() {
    return Container(
      height: 134.h,
      width: 320.w,
      decoration: BoxDecoration(
        color: AppColor.appbarColor,
        borderRadius: BorderRadius.circular(9.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SettingsRowItem(
            iconData: CupertinoIcons.person_alt_circle_fill,
            text: 'Your Profile',
            onTap: () {
              // Callback function to navigate to profile page
              // Get.toNamed(AppRoutes.profilePage);
            },
          ),
          SettingsRowItem(
            iconData: Icons.qr_code_scanner,
            text: 'Account Verification',
            onTap: () {
              // Callback function to navigate to settings page
              Get.toNamed(AppRoutes.verifyKyc);
            },
          ),
          SettingsRowItem(
            iconData: Icons.notifications,
            text: 'Notifications',
            onTap: () {
              // Callback function to navigate to privacy page
              // Get.toNamed(AppRoutes.privacyPage);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsSecondRow() {
    return Container(
      height: 162.h,
      width: 320.w,
      decoration: BoxDecoration(
        color: AppColor.appbarColor,
        borderRadius: BorderRadius.circular(9.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SettingsRowItem(
            iconData: Icons.lock_reset,
            text: 'Change Password',
            onTap: () {
              // Callback function to navigate to profile page
              // Get.toNamed(AppRoutes.profilePage);
            },
          ),
          SettingsRowItem(
            iconData: CupertinoIcons.lock_shield_fill,
            text: '2 Factor Authentication',
            onTap: () {
              // Callback function to navigate to settings page
              Get.toNamed(AppRoutes.settingsPage);
            },
          ),
          SettingsRowItem(
            iconData: Icons.lock,
            text: 'Change your PIN',
            onTap: () {
              // Callback function to navigate to privacy page
              // Get.toNamed(AppRoutes.privacyPage);
            },
          ),
          SettingsRowItem(
            iconData: FontAwesomeIcons.fingerprint,
            text: 'Fingerprint Recognition',
            onTap: () {
              // Callback function to navigate to privacy page
              // Get.toNamed(AppRoutes.privacyPage);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsThirdRow() {
    return Container(
      height: 134.h,
      width: 320.w,
      decoration: BoxDecoration(
        color: AppColor.appbarColor,
        borderRadius: BorderRadius.circular(9.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SettingsRowItem(
            iconData: Icons.translate,
            text: 'App Language',
            onTap: () {
              // Callback function to navigate to profile page
              // Get.toNamed(AppRoutes.profilePage);
            },
          ),
          SettingsRowItem(
            iconData: FontAwesomeIcons.headset,
            text: 'Support',
            onTap: () {
              // Callback function to navigate to profile page
              // Get.toNamed(AppRoutes.profilePage);
            },
          ),
          SettingsRowItem(
            iconData: FontAwesomeIcons.rightFromBracket,
            text: 'Log out',
            onTap: () {
              // Callback function to navigate to settings page
              Get.toNamed(AppRoutes.LoginScreenPage);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: SettingsAppBar(
          text: 'Settings',
          fontSize: 21.sp,
          onTap: () {
            Get.toNamed(
              AppRoutes.homePage,
            );
          },
        ),
      ),
      backgroundColor: AppColor.surfaceColor,
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Center(
          child: Column(
            children: [
              const SettingTextHeader(
                title: 'Account',
              ),
              _buildSettingsFirstRow(),
              SizedBox(height: 45.h),
              const SettingTextHeader(
                title: 'Security',
              ),
              _buildSettingsSecondRow(),
              SizedBox(height: 45.h),
              const SettingTextHeader(
                title: 'Others',
              ),
              _buildSettingsThirdRow(),
            ],
          ),
        ),
      ),
    );
  }
}




