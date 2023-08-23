import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:rexolut/pages/splashscreen/index.dart';

import '../../common/routes/names.dart';

class OtpSentScreenController extends GetxController {
  OtpSentScreenController();

  @override
  void onReady() {
    initAuth();
    super.onReady();
  }

  void initAuth() async {
    await Future.delayed(const Duration(seconds: 5));
    navigateToOtpScreen(source: 'otpsent'); // Pass the source as an argument
  }

  void navigateToOtpScreen({required String source}) {
    Get.offAllNamed(AppRoutes.otpScreenPage, arguments: {'source': 'otpsent'});
  }
}
