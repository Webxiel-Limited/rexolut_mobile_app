import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:rexolut/pages/verifykyc/controller.dart';

class VerifyKycBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<VerifyKycController>(() => VerifyKycController());
  }
}