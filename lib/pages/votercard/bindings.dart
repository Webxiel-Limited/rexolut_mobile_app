import 'package:get/get.dart';

import 'controller.dart';


class BvnScreenBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BvnScreenController>(() => BvnScreenController());
  }
}
