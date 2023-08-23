import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../common/constants/colors/colors.dart';
import '../../pages/homepage/controller.dart';

class RexAppBar extends StatelessWidget {
  final VoidCallback onTap;

   const RexAppBar({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppBar(
        backgroundColor: AppColor.surfaceColor,
        elevation: 0,
        leading: Icon(
          FontAwesomeIcons.arrowLeft,
          color: AppColor.surfaceTextColor,
          size: 20.sp,
        ),
      ),
    );
  }
}

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.appbarColor,
      toolbarHeight: 60.h,
      leading: Padding(
        padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
        child: CircleAvatar(
          radius: 1.5.r,
          backgroundColor: AppColor.mainColor,
          child: Icon(
            Icons.person_2_rounded,
            color: AppColor.appbarColor,
            size: 20.sp,
          ),
        ),
      ),
      flexibleSpace: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          margin: EdgeInsets.only(left: 50.w),
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left:11.w, top:55.h),
                  child: Text(
                    'Hello Emmanuel 👋',
                    style: TextStyle(
                      color: AppColor.surfaceTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  "Let's make some money today",
                  style: TextStyle(
                    color: AppColor.surfaceTextColor,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.w, top: 12.h),
          child: GetBuilder<HomeScreenController>(
            builder: (controller) => GestureDetector(
              onTap: () => controller.toggleNotificationPanel(),
              child: Stack(
                children: [
                  Icon(
                    FontAwesomeIcons.solidBell,
                    color: AppColor.mainColor,
                    size: 20.sp,
                  ),
                  if (controller.hasNewNotifications)
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 5,
                          minHeight: 5,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SettingsAppBar extends StatelessWidget {
  final String text;
  final double fontSize;
  final VoidCallback onTap;
  const SettingsAppBar({
    super.key,
    required this.text,
    required this.fontSize,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.appbarColor,
      leading: IconButton(
        onPressed: onTap,
        icon: Icon(
          FontAwesomeIcons.arrowLeft,
          color: AppColor.surfaceTextColor,
          size: 20.sp,
        ),
      ),
      title: Text(
        text,
        style: TextStyle(
            color: AppColor.mainColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}

class VerifyAppBar extends StatelessWidget {
  final String text;
  const VerifyAppBar({super.key, required this.text,});



  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColor.appbarColor,
      title: Text(
        text,
        style: TextStyle(
            color: AppColor.mainColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}