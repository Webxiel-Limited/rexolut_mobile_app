import 'package:get/get.dart';

import 'controller.dart';


class VirtualFundedBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CardFundedController>(() => CardFundedController());
  }
}
