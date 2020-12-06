import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/main_product/controllers/main_product_controller.dart';
import 'package:ta7t_elbeet/app/modules/main_product/views/widget/sup_product_body.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainProductView extends GetView<MainProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاقسام الفرعيه'),
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
      body: SupProductBody(),
    );
  }
}
