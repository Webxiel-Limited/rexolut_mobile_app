import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/colors/colors.dart';

class CardButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double width;
  const CardButton({
    super.key,
    required this.onTap, required this.text, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.r),
          color: AppColor.highlightColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: AppColor.surfaceColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
