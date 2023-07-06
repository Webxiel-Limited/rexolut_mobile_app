import 'package:get/get.dart';
import 'package:rexolut/pages/splashfour/controller.dart';

class SplashFourBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashFourController>(() => SplashFourController());
  }

}