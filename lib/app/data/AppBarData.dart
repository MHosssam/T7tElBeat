import 'package:flutter/material.dart';
import 'package:ta7t_elbeet/app/modules/setting/controllers/setting_controller.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:get/get.dart';
import 'TextData.dart';

class AppBarData extends AppBar {
  String appBarName;

  AppBarData(this.appBarName)
      : super(
          backgroundColor: ColorsUtilities.appBlue,
          title: TextData(
            appBarName,
            color: ColorsUtilities.appWhite,
          ),
          centerTitle: true,
          leading: Obx(
            () => Icon(
              Icons.radio_button_checked_outlined,
              color: Get.find<SettingController>().changeColor(),
            ),
          ),
        );
}
