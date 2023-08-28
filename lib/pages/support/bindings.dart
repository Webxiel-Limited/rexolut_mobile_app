import 'package:get/get.dart';
import 'controllers.dart';

class SupportScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupportScreenController>(() => (SupportScreenController()));
  }
}
