import 'package:country_code_picker/country_code_picker.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../common/routes/names.dart';

class UserLocationController extends GetxController {
  Rx<CountryCode?> selectedCountry = Rx<CountryCode?>(null);

  void onCountryChange(CountryCode? countryCode) {
    selectedCountry.value = countryCode;
  }

  void navigateToNextScreen() {
    if (selectedCountry.value != null) {
      // Redirect the user to another screen
      Get.toNamed(AppRoutes.termsAndCPage);
    } else {
      print('Please select a country');
      // Display an error message or perform any other action
      // to handle the case when a country is not selected.
    }
  }
}
