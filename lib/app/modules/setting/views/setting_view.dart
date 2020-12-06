import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/AppBarData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/home_screen_view.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/widget/drawer_data.dart';
import 'package:ta7t_elbeet/app/modules/setting/controllers/setting_controller.dart';
import 'package:ta7t_elbeet/app/modules/setting/views/widget/setting_body.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBarData('الاعدادات'),
        endDrawer: DrawerData(),
        body: SettingBody(),
      ),
      onWillPop: () {
        return Get.offAll(HomeScreenView());
      },
    );
  }
}
  