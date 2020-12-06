import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/AppBarData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/home_screen_view.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/widget/drawer_data.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/controllers/suggestions_controller.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/views/widget/body.dart';

class SuggestionsView extends GetView<SuggestionsController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBarData('الشكاوي و الاقتراحات'),
        endDrawer: DrawerData(),
        body: Body(),
      ),
      onWillPop: () {
        return Get.offAll(HomeScreenView());
      },
    );
  }
}
