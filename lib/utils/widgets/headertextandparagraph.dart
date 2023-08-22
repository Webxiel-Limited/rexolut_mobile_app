import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/colors/colors.dart';

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18.w, top: 70.h),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            text,
            style: TextStyle(
              color: AppColor.mainTextColor,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
            ),
          )),
    );
  }
}

class HeaderTextForAppBar extends StatelessWidget {
  final String text;
  const HeaderTextForAppBar({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18.w, top: 5.h),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            text,
            style: TextStyle(
              color: AppColor.mainTextColor,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
            ),
          )),
    );
  }
}

class HeaderParagraph extends StatelessWidget {
  final String text;
  const HeaderParagraph({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18.w, top: 10.h),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            text,
            style: TextStyle(
                color: AppColor.mainTextColor.withOpacity(0.7),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.7,
                wordSpacing: -3.5),
          )),
    );
  }
}
