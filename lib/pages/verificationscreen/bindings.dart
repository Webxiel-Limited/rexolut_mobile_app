import 'package:get/get.dart';

import 'controller.dart';


class VerificationScreenBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<VerificationScreenController>(() => VerificationScreenController());
  }
}
