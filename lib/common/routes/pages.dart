import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:rexolut/pages/authdashboard/index.dart';
import 'package:rexolut/pages/login/index.dart';

import '../../pages/authdashboard/view.dart';
import '../../pages/authdashboard/view.dart';
import '../../pages/splashfour/bindings.dart';
import '../../pages/splashfour/view.dart';
import '../../pages/splashscreen/bindings.dart';
import '../../pages/splashscreen/view.dart';
import '../../pages/splashthree/bindings.dart';
import '../../pages/splashthree/view.dart';
import '../../pages/splashtwo/bindings.dart';
import '../../pages/splashtwo/view.dart';
import 'routes.dart';

class AppPages {
  static const LoginScreenPage = AppRoutes.LoginScreenPage;
  static final RouteObservers<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // GetPage(name: AppPages.INITIAL, page: ()=> const SplashScreen(), binding: SplashScreenBinding(),),
    GetPage(name: AppRoutes.SplashTwoPage, page: ()=>  const SplashTwo(), binding: SplashTwoBinding()),
    GetPage(name: AppRoutes.SlashThreePage, page: ()=>  const SplashThree(), binding: SplashThreeBinding()),
    GetPage(name: AppRoutes.SplashFourPage, page: ()=>  const SplashFour(), binding: SplashFourBinding()),
    GetPage(name: AppRoutes.AuthDashboardPage, page: ()=>  const AuthDashBoard(), binding: AuthDashboardBindings()),
    GetPage(name: AppRoutes.LoginScreenPage, page: ()=>  const LoginScreen(), binding: LoginScreenBindings()),


  ];
}
