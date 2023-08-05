//
//
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// import '../routes/names.dart';
// import '../store/user.dart';
//
// /// check if the user is logged in
// class RouteAuthMiddleware extends GetMiddleware {
//   // priority smaller the better
//   @override
//   int? priority = 0;
//
//   RouteAuthMiddleware({required this.priority});
//
//   @override
//   RouteSettings? redirect(String? route) {
//     if (UserStore.to.isLogin || route == AppRoutes.SIGN_IN || route == AppRoutes.INITIAL
//         // || route == AppRoutes.Message
//     ) {
//       return null;
//     } else {
//       Future.delayed(
//           const Duration(seconds: 2), () => Get.snackbar("Tips", "Login expired, please login again!"));
//       // return const RouteSettings(name: AppRoutes.SIGN_IN);
//     }
//   }
// }
