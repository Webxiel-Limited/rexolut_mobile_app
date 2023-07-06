import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class AuthDashboardBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AuthDashboardController>(() => AuthDashboardController());

  }

}