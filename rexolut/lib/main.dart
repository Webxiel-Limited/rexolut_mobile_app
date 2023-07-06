import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rexolut/utils/theme.dart';

import 'common/routes/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 780),
        builder: (context, child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Rexolut',
              theme: AppThemeData.defaultTheme,
              initialRoute: AppPages.LoginScreenPage,
              getPages: AppPages.routes,
              darkTheme: AppThemeData.defaultThemeGreen,
              builder: EasyLoading.init(),
          defaultTransition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(microseconds: 1000),
            ));
  }
}
