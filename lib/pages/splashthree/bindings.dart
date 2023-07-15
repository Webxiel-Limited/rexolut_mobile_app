import 'package:get/get.dart';
import 'package:rexolut/pages/splashthree/controllers.dart';

class SplashThreeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashThreeController>(() => SplashThreeController());
  }

}