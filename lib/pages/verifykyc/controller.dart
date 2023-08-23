import 'package:get/get.dart';

class VerifyKycController extends GetxController {
  final chosenValue = RxString('One');

  void updateChosenValue(String value) {
    chosenValue.value = value;
  }
}