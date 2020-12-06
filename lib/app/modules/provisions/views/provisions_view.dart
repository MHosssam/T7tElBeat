import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/AppBarData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/home_screen_view.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/widget/drawer_data.dart';
import 'package:ta7t_elbeet/app/modules/provisions/controllers/provisions_controller.dart';
import 'package:ta7t_elbeet/app/modules/provisions/views/widget/provision_body.dart';

class ProvisionsView extends GetView<ProvisionsController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
          appBar: AppBarData('الشروط والاحكام'),
          endDrawer: DrawerData(),
          body: ProvisionsBody()
      ),
      onWillPop: () {
        return Get.offAll(HomeScreenView());
      },
    );
  }
}
  