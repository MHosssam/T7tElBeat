import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/controllers/suggestions_controller.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardBody extends GetView<SuggestionsController> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
      elevation: 3,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'Mohamed',
                  style: TextStyle(
                      color: ColorsUtilities.appBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 60.sp),
                ),
                Text(
                  '01001234567',
                  style: TextStyle(
                      color: ColorsUtilities.appYellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.sp),
                ),
              ],
            ),
            Text(
              'الفاكهه ليست طازجه',
              style: TextStyle(
                  color: ColorsUtilities.appGrey100,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.sp),
            ),
          ],
        ),
      ),
    );
  }
}
