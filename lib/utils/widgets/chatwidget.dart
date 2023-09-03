// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_tawk/flutter_tawk.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:rexolut/common/routes/names.dart';
// import 'appbar.dart';
//
// class Chat extends StatelessWidget {
//   const Chat({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//           preferredSize: Size.fromHeight(50.h),
//           child: NewCustomAppBar(
//             text: 'Support',
//             fontSize: 16.sp,
//             onTap: () {
//               Get.offAllNamed(
//                 AppRoutes.supportPage,
//               );
//             },
//           )),
//       body: Container(
//         decoration: BoxDecoration(
//           // color: Colors.white,
//           borderRadius: BorderRadius.circular(10.r),
//         ),
//         width: double.infinity,
//         height: double.infinity,
//         child: Column(
//           children: [
//             Expanded(
//               child: Tawk(
//                 directChatLink:
//                     'https://tawk.to/chat/64edcd25b2d3e13950ecb7b6/1h90einji',
//                 visitor: TawkVisitor(
//                   name: 'John Doe',
//                   email: 'johndoe@gmail.com',
//                 ),
//                 onLoad: () {
//                   print('Hello!');
//                 },
//                 onLinkTap: (String url) {
//                   print(url);
//                 },
//                 placeholder:  Center(
//                   child: Container(
//                     margin: EdgeInsets.all(50.h),
//                       width: 50.w,
//                       height: 50.h,
//                       child: const CircularProgressIndicator()),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
