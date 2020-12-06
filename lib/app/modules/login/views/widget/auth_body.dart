import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta7t_elbeet/app/data/ButtonData.dart';
import 'package:ta7t_elbeet/app/data/txt_field_body.dart';
import 'package:ta7t_elbeet/app/modules/login/views/widget/confirm_pass.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

class AuthBody extends StatelessWidget {
  var txtphone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 200.h),
              alignment: Alignment.center,
              width: Get.width,
              height: 500.h,
              child: Image.asset(
                'assets/images/logo.png',
                width: 500.h,
              )),
          SizedBox(height: 250.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0 , vertical: 10.0),
            child: TxtFieldBody('ادخل رقم الهاتف' , txtphone , TextAlign.left),
          ),
          ButtonData(
            text: 'تسجيل الدخول',
            color: ColorsUtilities.appBlue,
            onTap: () {
              Get.offAll(ConfirmPassword());
            },
          )
        ],
      ),
    );
  }
}
