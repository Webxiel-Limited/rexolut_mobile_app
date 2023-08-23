import 'dart:ui';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../common/constants/colors/colors.dart';
import '../../utils/widgets/country.dart';
import '../../utils/widgets/headertextandparagraph.dart';
import 'controller.dart';

class UserLocationScreen extends GetView<GetxController> {
  const UserLocationScreen({Key? key});

  Widget _buildHeader() {
    return Container(
      margin: EdgeInsets.only(left: 18.w),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Country',
            style: TextStyle(
              color: AppColor.mainTextColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.7,
            ),
          )),
    );
  }

  Widget _buildCountryList() {
    return SizedBox(
      width: 360.w,
      child: CountryDropdownWidget(),
    );
  }

  Widget _buildSubmitButton() {
    final UserLocationController controller = Get.find();

    return Obx(() {
      bool isCountrySelected = controller.selectedCountry.value != null;

      return GestureDetector(
        child: Container(
          width: 320.w,
          height: 43.h,
          margin: EdgeInsets.only(top: 30.h),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1.5.r,
                color: isCountrySelected
                    ? AppColor.mainColor
                    : AppColor.surfaceTextColor,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
              borderRadius: BorderRadius.circular(8.w),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isCountrySelected ? Colors.white : Colors.grey,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          if (isCountrySelected) {
            controller.navigateToNextScreen();
            CountryCode? selectedCountry = controller.selectedCountry.value;
            String? countryCode = selectedCountry?.code;
            String? countryName = selectedCountry?.name;
            print('Selected Country Code: $countryCode');
            print('Selected Country: $countryName');
            // Get.toNamed(AppRoutes.TermsAndConditionPage);
          } else {
            print('Please select a country');
            // Display an error message or perform any other action
            // to handle the case when a country is not selected.
          }
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const HeaderText(text: 'Location'),
                  const HeaderParagraph(
                      text: 'Please enter your country you reside in'), //
                  SizedBox(height: 40.h),
                  _buildHeader(),
                  _buildCountryList(),
                  _buildSubmitButton(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
