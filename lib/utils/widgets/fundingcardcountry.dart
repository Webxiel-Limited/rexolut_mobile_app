import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rexolut/pages/fundcard/controllers.dart';

import '../../common/constants/colors/colors.dart';
import '../../pages/userlocation/controller.dart';

class CardFundingCountry extends StatelessWidget {
  const CardFundingCountry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(supportedLocales: const [
      Locale("af"),
      Locale("am"),
      Locale("ar"),
      Locale("az"),
      Locale("be"),
      Locale("bg"),
      Locale("bn"),
      Locale("bs"),
      Locale("ca"),
      Locale("cs"),
      Locale("da"),
      Locale("de"),
      Locale("el"),
      Locale("en"),
      Locale("es"),
      Locale("et"),
      Locale("fa"),
      Locale("fi"),
      Locale("fr"),
      Locale("gl"),
      Locale("ha"),
      Locale("he"),
      Locale("hi"),
      Locale("hr"),
      Locale("hu"),
      Locale("hy"),
      Locale("id"),
      Locale("is"),
      Locale("it"),
      Locale("ja"),
      Locale("ka"),
      Locale("kk"),
      Locale("km"),
      Locale("ko"),
      Locale("ku"),
      Locale("ky"),
      Locale("lt"),
      Locale("lv"),
      Locale("mk"),
      Locale("ml"),
      Locale("mn"),
      Locale("ms"),
      Locale("nb"),
      Locale("nl"),
      Locale("nn"),
      Locale("no"),
      Locale("pl"),
      Locale("ps"),
      Locale("pt"),
      Locale("ro"),
      Locale("ru"),
      Locale("rw"), // Rwanda
      Locale("sd"),
      Locale("sk"),
      Locale("sl"),
      Locale("so"),
      Locale("sq"),
      Locale("sr"),
      Locale("sv"),
      Locale("ta"),
      Locale("tg"),
      Locale("th"),
      Locale("tk"),
      Locale("tr"),
      Locale("tt"),
      Locale("uk"),
      Locale("ug"),
      Locale("ur"),
      Locale("uz"),
      Locale("vi"),
      Locale("zh"),
      Locale("en", "NG"), // Nigeria
      Locale("en", "GH"), // Ghana
      Locale("en", "CM"), // Cameroon
      Locale("en", "TG"), // Togo
      Locale("en", "ZA"), // South Africa
    ], localizationsDelegates: const [
      CountryLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ], home: FundingCountryDropDown(width: 356.w, height: 50.h, containerColor: AppColor.surfaceColor, borderColor: AppColor.surfaceTextColor.withOpacity(0.8),));
  }
}

class FundingCountrySelection extends StatelessWidget {
  const FundingCountrySelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FundingCountryDropDown(width: 365.w, height: 50.h, containerColor: AppColor.surfaceColor, borderColor: AppColor.surfaceTextColor.withOpacity(0.8),),
      ),
    );
  }
}

class FundingCountryDropDown extends StatelessWidget {
  final FundCardController controller = Get.put(FundCardController(FocusNode()));
  final double width;
  final double height;
  final Color containerColor;
  final Color borderColor;

  FundingCountryDropDown({
    Key? key,
    required this.width,
    required this.height,
    required this.containerColor, required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(10.w),
        color: containerColor, // Set the container's color here
      ),
      width: width,
      height: height,
      child: CountryCodePicker(
        onChanged: controller.onCountryChange,
        initialSelection: 'NG',
        favorite: ['NG', 'GH', 'CM', 'TG', 'ZA', 'RW'],
        // flagWidth: 30.w,
        showCountryOnly: false,
        showDropDownButton: true,
        showOnlyCountryWhenClosed: true,
        // textOverflow: TextOverflow.clip,
        alignLeft: true,
        backgroundColor: AppColor.appbarColor,
        showFlag: true,showFlagMain: true,
        showFlagDialog: true,
        padding: EdgeInsets.all(2.w),
        textStyle: TextStyle(
            fontSize: 13.sp,
            color: AppColor.mainTextColor,
            letterSpacing: -0.9),
        boxDecoration: const BoxDecoration(
          color: AppColor.surfaceColor,
        ),
        dialogTextStyle: TextStyle(
            color: AppColor.mainTextColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}

