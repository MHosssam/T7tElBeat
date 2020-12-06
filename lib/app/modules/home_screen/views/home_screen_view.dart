import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/AppBarData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/controllers/home_screen_controller.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/widget/drawer_data.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

import 'widget/home_body.dart';


class HomeScreenView extends GetView<HomeScreenController> {
  Color iconColor = ColorsUtilities.appYellow;
  Color titleColor = ColorsUtilities.appBlue;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
         appBar: AppBarData('الصفحة الرئيسية'),
        endDrawer: DrawerData(),
        body: HomeBody()
      ),
      onWillPop: () {
        return Get.defaultDialog(
          barrierDismissible: false,
          title: "تحذير",
          content: Text(
            "هل تريد الخروج من التطبيق ؟", textAlign: TextAlign.right,),
          actions: <Widget>[
            FlatButton(
              color: Colors.red,
              child: Text("نعم"),
              onPressed: () {
                SystemNavigator.pop();
              },
            ),
            FlatButton(
              color: Colors.green,
              child: Text("لا"),
              onPressed: () {
                Get.back();
              },
            )
          ],
        );
      },
    );
  }
}
