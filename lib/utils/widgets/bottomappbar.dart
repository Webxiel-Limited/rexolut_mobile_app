import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:unicons/unicons.dart';

import '../../common/constants/colors/colors.dart';
import '../../pages/homepage/controller.dart';

enum BottomBarIcon {
  Home,
  Equalizer,
  Exchange,
  Wallet,
  Ellipsis,
}

class RexBottomBar extends StatelessWidget {
  const RexBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (controller) {
        return BottomAppBar(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          color: const Color(0xFF121212),
          child: SizedBox(
            height: 60.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildBottomBarItem(
                  icon: Icons.home_outlined,
                  text: 'Home',
                  index: 0,
                  isSelected: controller.selectedIconIndex.value == 0,
                ),
                buildBottomBarItem(
                  icon: Icons.equalizer_sharp,
                  text: 'Markets',
                  index: 1,
                  isSelected: controller.selectedIconIndex.value == 1,
                ),
                buildBottomBarItem(
                  icon: UniconsLine.exchange_alt,
                  text: 'Trade',
                  index: 2,
                  isSelected: controller.selectedIconIndex.value == 2,
                ),
                buildBottomBarItem(
                  icon: UniconsLine.wallet,
                  text: 'Assets',
                  index: 3,
                  isSelected: controller.selectedIconIndex.value == 3,
                ),
                buildBottomBarItem(
                  icon: FontAwesomeIcons.ellipsis,
                  text: 'More',
                  index: 4,
                  isSelected: controller.selectedIconIndex.value == 4,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildBottomBarItem({
    required IconData icon,
    required String text,
    required int index,
    required bool isSelected, //index parameter to identify the icon's position
  }) {
    final HomeScreenController controller = Get.find<HomeScreenController>();

    return GestureDetector(
      onTap: () => controller.changePage(index),
      child: Obx(() {
        final isSelected = controller.selectedIconIndex.value == index;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color:
                  isSelected ? AppColor.highlightColor : AppColor.offTextColor2,
              size: 25.sp,
            ),
            SizedBox(height: 5.h),
            Text(
              text,
              style: TextStyle(
                color: isSelected
                    ? AppColor.highlightColor
                    : AppColor.offTextColor2,
                fontSize: 10.sp,
                letterSpacing: -0.6,
              ),
            ),
          ],
        );
      }),
    );
  }
}
