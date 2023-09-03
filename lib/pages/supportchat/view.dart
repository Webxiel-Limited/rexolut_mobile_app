import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/utils/widgets/chat.dart';

import '../../common/constants/colors/colors.dart';
import 'controllers.dart';

class SupportChatScreen extends GetView<SupportChatScreenController> {
  const SupportChatScreen({super.key});

  Widget _buildChat(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final chatWidth = screenWidth * 0.9;
    final chatHeight = screenHeight * 0.9;

    return Container(
      width: chatWidth,
      height: chatHeight,
      margin: EdgeInsets.only(top:43.h),
      child: const LiveChat(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildChat(context),
            ],
          ),
        ),
      ),
    );
  }
}
