import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../common/constants/colors/colors.dart';
import '../../utils/widgets/appbar.dart';
import 'controllers.dart';

class SupportScreen extends GetView<SupportScreenController> {
  const SupportScreen({super.key});

  Widget _buildContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: AppColor.surfaceTextColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: TextField(
              showCursor: false,
              controller: controller.searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColor.offTextColor,
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Enter your Keyword',
                labelStyle: TextStyle(
                  color: AppColor.surfaceColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
                suffixIcon: Icon(Icons.search, color: AppColor.surfaceColor, size: 15.sp),
              ),
              onChanged: (_) => controller.onSearchChanged(),
            ),
          ),
          for (FAQItem faqItem in controller.filteredItems)
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Container(
                      height: 0.90.sh,
                      decoration: BoxDecoration(
                        color: AppColor.surfaceTextColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.r),
                          topRight: Radius.circular(15.r),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.close, color: AppColor.surfaceColor),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40.w, right: 25.w, top: 10.h),
                            child: Text(
                              faqItem.header, // Use the FAQ header as title
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.surfaceColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(faqItem.avatar), // Set the avatar image
                                  radius: 20.w,
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      faqItem.author, // Use the FAQ author
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.surfaceColor,
                                      ),
                                    ),
                                    Text(
                                      faqItem.timestamp, // Use the FAQ timestamp
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColor.surfaceColor,
                                        wordSpacing: -1.5,
                                        letterSpacing: -0.9,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Text(
                              faqItem.answer, // Use the FAQ answer
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColor.surfaceColor,
                                wordSpacing: -1.5,
                                letterSpacing: -0.7,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          faqItem.header,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColor.surfaceColor,
                            fontWeight: FontWeight.w500,
                            wordSpacing: -1.5,
                            letterSpacing: -0.9,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppColor.surfaceColor,
                        size: 12.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }


  Widget _buildTitleContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      margin: EdgeInsets.only(top: 20.h),
      width: 320.w,
      decoration: BoxDecoration(
        color: AppColor.surfaceTextColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Add this line
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Send us a message',
                style: TextStyle(
                  color: AppColor.surfaceColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                'We typically reply in a few minutes',
                style: TextStyle(
                  color: AppColor.surfaceColor,
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w500,
                  wordSpacing: -1.5,
                  letterSpacing: -0.6,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.send,
              color: AppColor.surfaceColor, // Set the color accordingly
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const DashboardAppBar(
          icon: CupertinoIcons.clear,
          showNotificationIcon: false,
        ),
      ),
      backgroundColor: AppColor.surfaceColor,
      body: Center(
        child: Column(
          children: [
            _buildTitleContainer(),
            SizedBox(height: 20.h),
            GetBuilder<SupportScreenController>(
              builder: (controller) {
                return _buildContainer(context);
              },
            ),          ],
        ),
      ),
    );
  }
}
