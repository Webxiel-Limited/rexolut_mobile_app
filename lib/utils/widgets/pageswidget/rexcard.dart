import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/colors/colors.dart';
import '../../../pages/createcards/controller.dart';

class RexCard extends StatelessWidget {
  const RexCard({
    super.key,
    required this.cardMoneyController, this.fundedAmount,
  });

  final CreateCardController cardMoneyController;
  final String? fundedAmount; // Add this line


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 301.w,
      height: 173.h,
      margin: EdgeInsets.only(top: 33.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColor.highlightColor,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.h, left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Balance",
                      style: TextStyle(
                        color: AppColor.surfaceColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h, left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cardMoneyController.displayCardAmount,
                      style: TextStyle(
                          color: AppColor.surfaceColor,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w500,
                          wordSpacing: -14,
                          letterSpacing: -2.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 230.w,
            top: 10.h,
            child: Container(
              padding: EdgeInsets.all(5.r),
              decoration: BoxDecoration(
                  color: AppColor.surfaceTextColor,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Text(
                'VIRTUAL CARD',
                style: TextStyle(
                    fontSize: 7.sp,
                    color: AppColor.surfaceColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
