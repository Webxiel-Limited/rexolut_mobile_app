import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:rexolut/pages/fundingsuccess/controllers.dart';


class FundingSuccessBindings implements Bindings {
  @override
  void dependencies() {
    // Get.put(FundingSuccess(), permanent: true);
    Get.lazyPut<FundingSuccessController>(() => FundingSuccessController());

  }
}
