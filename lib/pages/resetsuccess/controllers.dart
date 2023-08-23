import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:rexolut/pages/splashscreen/index.dart';

import '../../common/routes/names.dart';

class PasswordResetSuccessController extends GetxController {
  PasswordResetSuccessController();
  // @override
  // void onReady() {
  //   super.onReady();
  //   Future.delayed(const Duration(seconds: 3), ()=> Get.offNamed(AppRoutes.SplashTwoPage));
  // }
  @override
  void onReady() {
    initAuth();
    super.onReady();
  }

  void initAuth() async {
    await Future.delayed(const Duration(seconds: 5));
    navigateToOtSplashTwoScreen();
  }

  void navigateToOtSplashTwoScreen() {
    Get.offAllNamed(AppRoutes.LoginScreenPage);
  }
}
