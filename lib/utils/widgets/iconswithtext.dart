import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/colors/colors.dart';

class IconsWithText extends StatelessWidget {
  const IconsWithText({
    super.key,
    required this.iconData,
    required this.text,
    required this.onPressed,
  });

  final IconData iconData;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 45.w,
            height: 45.w,
            decoration: ShapeDecoration(
              shape: CircleBorder(
                side: BorderSide(
                  width: 1.w,
                  color: AppColor.highlightColor,
                ),
              ),
            ),
            child: Icon(
              iconData,
              size: 20.sp,
              color: AppColor.highlightColor,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          text,
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColor.highlightColor,
          ),
        ),
      ],
    );
  }
}