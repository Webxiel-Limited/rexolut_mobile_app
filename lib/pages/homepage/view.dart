import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../common/constants/colors/colors.dart';
import '../../utils/widgets/appbar.dart';
import '../../utils/widgets/pageswidget/assetsbutton.dart';
import '../../utils/widgets/bottomappbar.dart';
import '../../utils/widgets/pageswidget/homebutton.dart';
import '../../utils/widgets/pageswidget/marketbutton.dart';
import '../../utils/widgets/pageswidget/morebutton.dart';
import '../../utils/widgets/pageswidget/tradebutton.dart';
import 'controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  final List<Widget> pages = [
     ButtonHome(),
    const ButtonMarket(),
    const ButtonTrade(),
    const ButtonAssets(),
    const ButtonMore(),
  ];
  HomeScreen({Key? key}) : super(key: key);
  final HomeScreenController _controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    _controller.checkForNewNotifications();
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const DashboardAppBar(),

      ),
      body: PageView(
        controller: _controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: pages,
      ),
      bottomNavigationBar: const RexBottomBar(),
      // bottomSheet: ListView(children: const [Notifs()]),
    );
  }
}
