import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../../common/constants/colors/colors.dart';
import '../../pages/userlocation/controller.dart';

class CountrySelector extends StatelessWidget {
  const CountrySelector({Key? key}) : super(key: key);

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
    ], home: CountryDropdownWidget());
  }
}

class CountrySelectorNow extends StatelessWidget {
  const CountrySelectorNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CountryDropdownWidget(),
      ),
    );
  }
}

class CountryDropdownWidget extends StatelessWidget {
  final UserLocationController controller = Get.put(UserLocationController());

  CountryDropdownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColor.mainTextColor.withOpacity(0.8),
          ),
          borderRadius: BorderRadius.circular(10.w)),
      width: 365.w,
      child: CountryCodePicker(
        onChanged: controller.onCountryChange,
        initialSelection: 'NG',
        favorite: ['NG', 'GH', 'CM', 'TG', 'ZA', 'RW'],
        showCountryOnly: false,
        showDropDownButton: true,
        showOnlyCountryWhenClosed: true,
        alignLeft: true,
        backgroundColor: AppColor.surfaceColor,
        showFlag: false,
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
