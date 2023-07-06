import 'package:get/get.dart';

import 'controller.dart';

class RegisterPagedBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<RegisterPageController>(() => RegisterPageController());

  }

}