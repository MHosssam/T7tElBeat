import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/login/controllers/home_controller.dart';
import 'package:ta7t_elbeet/app/modules/login/views/widget/auth_body.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: AuthBody(),
        resizeToAvoidBottomPadding: false,
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
  