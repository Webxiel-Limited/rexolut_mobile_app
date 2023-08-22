import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:rexolut/pages/login/state.dart';

class LoginScreenController extends GetxController {
  LoginScreenController();
  final state = LoginScreenState();
  TextEditingController controller = TextEditingController();
}
