import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/setting/controllers/setting_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'shop_availability.dart';

class RadioBody extends GetView<SettingController> {
  RadioBody({
    this.shopAvailability,
    this.title,
    this.color,
    this.onTap,
  });

  final String title;
  final ShopAvailability shopAvailability;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
     return InkWell(
      onTap: () {
        controller.valueData.value = shopAvailability;
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Obx(
              () => RadioListTile(
            value: shopAvailability,
            groupValue: controller.valueData.value,
            onChanged: (ShopAvailability value) {
              controller.SetChanges(value);
            },
            title: Container(
              width: 200.w,
              alignment: Alignment.centerRight,
              child: Text(title),
            ),
            activeColor: color,
          ),
        ),
      ),
    );
  }
}
