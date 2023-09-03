import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class FundCardController extends GetxController {
  FundCardController(this.inputFocusNode);
  final TextEditingController inputController = TextEditingController();
  final RxBool isTextFieldFocused = false.obs;
  final FocusNode inputFocusNode;




  @override
  void onInit() {
    super.onInit();
    inputFocusNode.addListener(() {
      isTextFieldFocused.value = inputFocusNode.hasFocus;
    });
  }




  Rx<CountryCode?> selectedCountry = Rx<CountryCode?>(null);

  void onCountryChange(CountryCode? countryCode) {
    selectedCountry.value = countryCode;
  }

}
