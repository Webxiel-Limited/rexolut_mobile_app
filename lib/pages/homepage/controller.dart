import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:rexolut/utils/widgets/pageswidget/homebutton.dart';
import 'package:rexolut/utils/widgets/pageswidget/marketbutton.dart';
import 'package:rexolut/utils/widgets/pageswidget/tradebutton.dart';

import '../../utils/widgets/pageswidget/assetsbutton.dart';
import '../../utils/widgets/pageswidget/morebutton.dart';
import '../../utils/widgets/pageswidget/notifications.dart';

class HomeScreenController extends GetxController {
  // Bottom Bar
  RxInt selectedIconIndex = 0.obs;
  RxDouble accountBalance = 5457.23.obs;

  String get displayAmount {
    MoneyFormatter formatter = MoneyFormatter(amount: accountBalance.value);
    return formatter.output.symbolOnLeft; // Displaying the balance without currency symbol in a compact format (e.g., "12.35k")
  }


  void setSelectedIcon(int index) {
    selectedIconIndex.value = index;
  }

  //Notification Panel
  bool hasNewNotifications = false;
  bool showNotificationPanel = false;

  // Method to check for new notifications and update the flag
  void checkForNewNotifications() {
    bool newNotifications = true;
    // Update the hasNewNotifications flag
    hasNewNotifications = newNotifications;
    update();
  }

  void toggleNotificationPanel() {
    showNotificationPanel = !showNotificationPanel;
    update();
    if (showNotificationPanel) {
      checkForNewNotifications();
      // Sample list of notifications. You can replace this with your actual data.
      List<String> notifications = [
        'Noteworthy'
      ];
      Get.to(NotificationsPage(
        notifications: notifications,
        showNotificationPanel: showNotificationPanel,
      ));
    }
  }

// Page Controller to manage page switching
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: selectedIconIndex.value);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }


  void changePage(int index) {
    // Animate to the selected page when the icon is clicked
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    selectedIconIndex.value = index;
  }// This triggers a rebuild of the UI to reflect the changes.
}


