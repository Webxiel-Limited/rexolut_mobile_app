import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/colors/colors.dart';

class FormTitleText extends StatelessWidget {
  final String title;
  const FormTitleText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.h, left: 20, bottom: 10.h),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          title,
          style: TextStyle(
            color: AppColor.surfaceTextColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.9,
            wordSpacing: -3,
          ),
        ),
      ),
    );
  }
}
