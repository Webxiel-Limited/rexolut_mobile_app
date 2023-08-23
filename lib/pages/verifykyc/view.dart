import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rexolut/pages/bvnscreen/index.dart';
import 'package:rexolut/utils/widgets/appbar.dart';

import '../../common/constants/colors/colors.dart';
import '../verificationscreen/view.dart';
import 'controller.dart';

class VerifyKyc extends GetView<VerifyKycController> {
  VerifyKyc({Key? key}) : super(key: key);

  final Map<String, Widget> itemScreens = {
    'Driver\'s Licence': const VerificationScreen(),
    'Passport': const VerificationScreen(),
    'Voter\'s card': const VerificationScreen(),
    'NIN': const VerificationScreen(),
    'BVN': const BvnScreen(),
  };

  final _selectedItem = ''.obs;
  final _isItemSelected = false.obs;

  Widget _buildMenuItem(String value, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          // Remove border for the selected item
          border: isSelected ? null : const Border(bottom: BorderSide(color: AppColor.surfaceTextColor, width: 2.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1.0),
          child: Text(
            value,
            style: TextStyle(
              color: isSelected ? AppColor.highlightColor : AppColor.surfaceTextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenu() {
    return Container(
      width: 250.w,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: AppColor.surfaceTextColor,
        ),
      ),
      padding: EdgeInsets.only(left: 20.r),
      child: Obx(
            () => DropdownButton<String>(
              icon: const Icon(
                Icons.arrow_drop_down,
                color: AppColor.highlightColor,
              ),
          elevation: 0,
          dropdownColor: AppColor.surfaceColor,
          hint: Row(
            children: [
              Text(
                'Choose an ID                                                        ',
                style: TextStyle(
                  color: AppColor.surfaceTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          value: _isItemSelected.value ? _selectedItem.value : null,
          underline: Container(),
          onChanged: (String? newValue) {
            _isItemSelected.value = true;
            _selectedItem.value = newValue ?? '';
            if (_isItemSelected.value) {
              // Redirect to the screen associated with the selected item
              if (itemScreens.containsKey(_selectedItem.value)) {
                Get.to(() => itemScreens[_selectedItem.value]!);
              }
            }
          },
          items: itemScreens.keys.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: _buildMenuItem(value, value == _selectedItem.value),
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: SettingsAppBar(
          text: 'Let\'s Verify your ID',
          fontSize: 16.sp,
          onTap: () {
            Get.back();
          },
        ),
      ),
      backgroundColor: AppColor.surfaceColor,
      body: Column( // Wrap ListView inside a Column
        children: [
          Expanded( // Use Expanded widget for _buildMenu()
            child: ListView(
              padding: EdgeInsets.only(top: 50.h, left: 10.w, right: 10.w),
              children: [
                _buildMenu(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
