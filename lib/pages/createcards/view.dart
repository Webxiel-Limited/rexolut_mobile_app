import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rexolut/common/constants/colors/colors.dart';

import 'controller.dart';

class CreateCards extends GetView<CreateCardController> {
  const CreateCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.surfaceColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.arrowLeftLong,
            color: AppColor.surfaceTextColor,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Create Card",
          style: TextStyle(
            color: AppColor.highlightColor,
            fontSize: 21.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: AppColor.surfaceColor,
      body: Center(
          child: Column(
        children: [],
      )),
    );
  }
}
