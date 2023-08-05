import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/colors/colors.dart';

class SettingTextHeader extends StatelessWidget {
  const SettingTextHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, bottom: 10.h),
        child: Text(
          title,
          style: TextStyle(
              color: AppColor.mainColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

