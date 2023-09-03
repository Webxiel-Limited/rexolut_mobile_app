import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'controllers.dart';

class FundCardBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FundCardController>(() => FundCardController(FocusNode()));

  }
}
