import 'package:get/get.dart';

import 'controller.dart';


class FacialRecognitionBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FacialRecognitionController>(() => FacialRecognitionController());
  }
}
