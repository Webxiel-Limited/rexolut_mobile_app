import 'package:get/get.dart';

import 'controller.dart';


class VirtualCardDetailsBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<VirtualCardDetailsController>(() => VirtualCardDetailsController());
  }
}
