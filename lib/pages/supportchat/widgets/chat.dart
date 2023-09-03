import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rexolut/common/constants/colors/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../common/routes/names.dart';
import 'appbar.dart';

class LiveChat extends StatefulWidget {
  const LiveChat({super.key});

  @override
  State<LiveChat> createState() => _LiveChatState();
}

class _LiveChatState extends State<LiveChat> {
  final String selectedUrl =
      'https://tawk.to/chat/64edcd25b2d3e13950ecb7b6/1h90einji';

  int position = 1;
  final key = UniqueKey();

  void doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  void startLoading(String A) {
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: NewCustomBar(
          text: 'Support',
          fontSize: 16.sp,
          onTap: () {
            Get.offAllNamed(AppRoutes.supportPage); // Use Navigator.pop to navigate back
          },
        ),
      ),
      body: IndexedStack(
        index: position,
        children: <Widget>[
          WebView(
            key: key,
            initialUrl: selectedUrl,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: doneLoading,
            onPageStarted: startLoading,
            onWebResourceError: (error) {
              // Handle web resource errors here
              print("Web error: ${error.errorCode}, ${error.description}");
              setState(() {
                position = 2; // Set position to 2 to display error message
              });
            },
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text('Loading...'),
            ),
          ),
          // Error message screen
          Container(
            color: AppColor.appbarColor,
            padding: EdgeInsets.all(20.w),// Customize the error screen background color
            child: Center(
              child: Text(
                'An error occurred while loading the page.',
                style: TextStyle(
                  color: Colors.white, // Customize the error message text color
                  fontSize: 16.0, // Customize the error message text size
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
