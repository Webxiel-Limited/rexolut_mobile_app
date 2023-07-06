import 'package:get/get.dart';
import 'package:rexolut/pages/login/controller.dart';


class LoginScreenBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());

  }

}