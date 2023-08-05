import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'controllers.dart';

class PasswordResetSuccessBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(PasswordResetSuccessController(), permanent: true);
    // Get.lazyPut<PasswordResetSuccessController>(() => PasswordResetSuccessController());

  }
}
