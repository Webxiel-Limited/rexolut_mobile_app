import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rexolut/pages/splashscreen/controllers.dart';


class SplashScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  }

}