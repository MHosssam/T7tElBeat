
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/AppBarData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/home_screen_view.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/widget/drawer_data.dart';
import 'package:ta7t_elbeet/app/modules/statistics/controllers/statistics_controller.dart';
import 'package:ta7t_elbeet/app/modules/statistics/views/widget/stat_body.dart';
import 'package:ta7t_elbeet/app/routes/app_pages.dart';

class StatisticsView extends GetView<StatisticsController> {


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBarData('الاحصائيات'),
        endDrawer: DrawerData(),
        body: StatBody(),
      ),
      onWillPop: () {
        return Get.offAllNamed(Routes.STATISTICS);
      },
    );
  }
}

