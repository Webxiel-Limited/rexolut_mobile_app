import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rexolut/pages/splashtwo/controllers.dart';

class SplashTwoBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashTwoController>(() => SplashTwoController());
  }
}