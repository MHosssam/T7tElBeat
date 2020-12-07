


import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/setting/views/widget/shop_availability.dart';

class SettingService extends GetxService {
  //TODO: Implement SettingController

  Rx<ShopAvailability> valueData = ShopAvailability.Open.obs;

  void SetChanges(val) {
    valueData.value = val;
  }

  Color changeColor() {
    switch (valueData.value) {
      case ShopAvailability.Open:
        return Colors.lightGreenAccent;
        break;
      case ShopAvailability.Busy:
        return Colors.orangeAccent;
        break;
      case ShopAvailability.Closed:
        return Colors.red;
        break;
      default:
        return Colors.white;
    }
  }

  final  dateStart = DateTime.utc(2020, 1, 1).obs;
  final dateEnd = DateTime.utc(2020, 6, 1).obs;


  Future<DateTime> datePicker(DateTime initial) async {
    final date = await DatePicker.showDatePicker(
      Get.overlayContext,
      showTitleActions: true,
      minTime: DateTime(2020, 1, 1),
      maxTime: DateTime(2030, 12, 30),
      onChanged: (date) {
        print('change $date');
        return date;
      },
      onConfirm: (date) {
        return date;
      },
      currentTime: initial,
    );
    return date;
  }
}