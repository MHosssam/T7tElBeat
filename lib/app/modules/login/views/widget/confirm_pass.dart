import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ta7t_elbeet/app/data/ButtonData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/home_screen_view.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

class ConfirmPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 900.w,
                height: 900.w,
                child: Lottie.asset(
                  'assets/flare/password.json',
                ),
              ),
              SizedBox(height: 200.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: PinCodeTextField(
                  keyboardType: TextInputType.number,
                  appContext: context,
                  onChanged: (val) {
                    // controller.verifyCodeController.text = val;
                  },
                  // controller: controller.verifyCodeController,
                  length: 6,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    fieldHeight: 110.w,
                    fieldWidth: 90.w,
                  ),
                ),
              ) ,
              ButtonData(
                text: 'تسجيل الدخول',
                color: ColorsUtilities.appBlue,
                onTap: () {
                  Get.offAll(HomeScreenView());
                },
              ),
            ],
          ),
        ),
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
