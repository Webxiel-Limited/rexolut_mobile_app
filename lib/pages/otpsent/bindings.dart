import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'controllers.dart';

class OtpSentScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(OtpSentScreenController(), permanent: true);
    // Get.lazyPut<OtpSentScreenController>(() => OtpSentScreenController());

  }
}
