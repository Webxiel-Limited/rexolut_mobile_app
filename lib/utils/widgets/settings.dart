import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/colors/colors.dart';

class SettingsRowItem extends StatelessWidget {
  const SettingsRowItem({
    super.key,
    required this.iconData,
    required this.text,
    required this.onTap,
    this.showRequiredText = true
  });

  final IconData iconData;
  final String text;
  final VoidCallback onTap;
  final bool showRequiredText;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Use the provided onTap callback
      child: Container(
        margin: EdgeInsets.only(left: 25.w),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 15.sp,
              color: AppColor.highlightColor,
            ),
            SizedBox(width: 20.w),
            Text(
              text,
              style: TextStyle(
                color: text == 'Log out' ? AppColor.errorTextColor : AppColor.surfaceTextColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (showRequiredText && text == 'Account Verification')
              Container(
                margin: EdgeInsets.only(left: 10.w),
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                width: 39.w,
                height: 15.h,

                decoration: BoxDecoration(
                  color: AppColor.errorTextColor,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Text(
                  'Required',
                  style: TextStyle(
                    color: AppColor.surfaceTextColor,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}