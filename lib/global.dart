import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rexolut/pages/splashscreen/bindings.dart';
import 'package:rexolut/pages/verificationscreen/controller.dart';

import 'common/services/storage.dart';
import 'common/store/user.dart';

class Global{
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );
    // await Get.putAsync<StorageService>(() => StorageService().init());
    // Get.put<UserStore>(UserStore());
    Get.put(VerificationScreenController());
    SplashScreenBinding().dependencies();

  }
}