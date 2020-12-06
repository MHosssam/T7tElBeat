import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/AppBarData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/home_screen_view.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/widget/drawer_data.dart';
import 'package:ta7t_elbeet/app/modules/shop_management/controllers/shop_management_controller.dart';

import 'widget/management_body.dart';

class ShopManagementView extends GetView<ShopManagementController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBarData('اداره المحلات'),
        endDrawer: DrawerData(),
        body: ManagementBody(),
      ),
      onWillPop: () {
        return Get.offAll(HomeScreenView());
      },
    );
  }
}
  