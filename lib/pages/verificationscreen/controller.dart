
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class VerificationScreenController extends GetxController{
  var image = Rx<XFile?>(null);

  // void clearState() {
  //   image.value = null;
  // }

  Future<void> pickImage() async {
    try {
      final XFile? pickedFile =
      await ImagePicker().pickImage(source: ImageSource.camera);
      if (pickedFile == null) return;
      image.value = pickedFile;
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }
}
