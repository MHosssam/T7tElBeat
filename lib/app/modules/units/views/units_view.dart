import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:ta7t_elbeet/app/modules/units/controllers/units_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

import 'widget/units_body.dart';

class UnitsView extends GetView<UnitsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الوحدات'),
        centerTitle: true,
        actions: [
          FlatButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'تم',
                style: TextStyle(
                  color: ColorsUtilities.appWhite,
                  fontSize: 50.sp,
                ),
              )),
        ],
      ),
      body: UnitsBody(),
    );
  }
}
  