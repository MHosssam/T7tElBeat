import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/AppBarData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/home_screen_view.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/widget/drawer_data.dart';
import 'package:ta7t_elbeet/app/modules/notification/controllers/notification_controller.dart';


import 'widget/notification_body.dart';

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBarData('الاشعارات'),
        endDrawer: DrawerData(),
        body: NotificationBody(),
      ),
      onWillPop: () {
        return Get.offAll(HomeScreenView());
      },
    );
  }
}
