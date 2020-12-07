import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/ButtonData.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ta7t_elbeet/service/setting_service.dart';

class EshtrakBody extends GetView<SettingService> {
  final String title;
  final Rx<DateTime> time;

  EshtrakBody(this.title, this.time);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonData(
          text: title,
          width: 400.w,
          onTap: () async {
            final date = await controller.datePicker(time.value);
            time.value = date;
          },
        ),
        Obx(()=> TextData("${DateFormat.yMMMd().format(time.value)}")),
      ],
    );
  }
}

/*
*
*
*  */