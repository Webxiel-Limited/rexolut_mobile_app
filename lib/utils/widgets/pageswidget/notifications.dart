import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common/constants/colors/colors.dart';

class NotificationsPage extends StatelessWidget {
  final List<String> notifications;
  final bool showNotificationPanel; // List of notification messages

  const NotificationsPage(
      {required this.notifications,
      Key? key,
      required this.showNotificationPanel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.offTextColor,
      appBar: AppBar(
        backgroundColor: AppColor.appbarColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: AppColor.surfaceTextColor,
            size: 20.sp,
          ),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
              color: AppColor.surfaceTextColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: notifications.isEmpty
          ? Center(
              child: Text(
                'No notifications',
                style: TextStyle(
                    color: AppColor.appbarColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700),
              ),
            )
          : ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) => Card(
                color: AppColor.surfaceColor,
                elevation: 2,
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: AppColor.errorTextColor,
                    child: Icon(
                      Icons.notification_important, color: AppColor.surfaceTextColor,
                      size: 15,
                    ),
                  ),
                  title: Text(
                    'Card Issue',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    notifications[index],
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.9,
                      wordSpacing: -3.9
                    ),
                  ),
                  onTap: () {
                    // Handle tapping on the notification (if needed).
                  },
                ),
              ),
            ),
    );
  }
}
