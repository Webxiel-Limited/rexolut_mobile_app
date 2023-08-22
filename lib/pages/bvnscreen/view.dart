import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import '../../utils/widgets/appbar.dart';
import 'controller.dart';

class BvnScreen extends GetView<BvnScreenController> {
  const BvnScreen({Key? key}) : super(key: key);

  Widget _buildTextField({
    required String hintText,
    String? Function(String?)? validator,
  }) {
    return Container(
      width: 325.w,
      height: 45.h,
      margin: EdgeInsets.only(top: 25.h),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 50.h),
          hintStyle: TextStyle(
            color: AppColor.surfaceTextColor,
            fontSize: 12.sp, // Adjust the fontSize here
            fontWeight: FontWeight.w400,
            letterSpacing: -1.1,
            wordSpacing: -3,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.surfaceTextColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.highlightColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        cursorColor: AppColor.mainTextColor,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        validator: validator,
      ),
    );
  }

  Widget _buildButton() {
    return GestureDetector(
      child: Container(
        width: 220.w,
        height: 45.h,
        margin: EdgeInsets.only(top: 100.h),
        decoration: BoxDecoration(
          color: AppColor.highlightColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: const Center(
          child: Text(
            'Verify',
            style: TextStyle(
              color: AppColor.surfaceColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.6,
            ),
          ),
        ),
      ),
      onTap: () {
        Get.offNamed(AppRoutes.facialRecognition);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: const VerifyAppBar(text: 'Let\'s Verify your Identity'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60.h),
            _buildTextField(
              hintText: 'BVN',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'BVN is required';
                }
                if (value.length != 11) {
                  return 'BVN must be 11 digits';
                }
                return null;
              },
            ),
            _buildTextField(
              hintText: 'Phone Number',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Phone number is required';
                }
                return null;
              },
            ),
            _buildButton(),
          ],
        ),
      ),
    );
  }
}