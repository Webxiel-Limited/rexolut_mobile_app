import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class OtpScreenController extends GetxController {
  RxInt timerMinutes = 2.obs;
  RxInt timerSeconds = 59.obs;
  RxString enteredPin = ''.obs;
  final TextEditingController pinController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    startTimer(); // Start the countdown timer when the controller is initialized
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (timerMinutes.value == 0 && timerSeconds.value == 0) {
        timer.cancel();
      } else if (timerSeconds.value == 0) {
        timerMinutes.value--;
        timerSeconds.value = 59;
      } else {
        timerSeconds.value--;
      }
    });
  }

  void resendOTP() {
    timerMinutes.value = 2; // Reset the timer minutes
    timerSeconds.value = 59; // Reset the timer seconds
    startTimer(); // Start the timer again
  }

  String getFormattedTime() {
    String minutes = timerMinutes.value.toString().padLeft(2, '0');
    String seconds = timerSeconds.value.toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  void submitPin() {
    final pin = enteredPin.value;
    if (pin.length == 4) {
      // Perform pin submission logic
      print('Submitted pin: $pin');
      enteredPin.value = ''; // Clear the entered pin
      // Navigate to the next screen or perform other actions
    } else {
      // Show an error or display a message if the pin is not valid
      print('Invalid pin');
    }
  }
}
