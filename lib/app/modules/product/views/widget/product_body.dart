import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/main_product/views/main_product_view.dart';
import 'package:ta7t_elbeet/app/modules/new_product/views/new_product_view.dart';
import 'package:ta7t_elbeet/app/modules/units/bindings/units_binding.dart';
import 'package:ta7t_elbeet/app/modules/units/views/units_view.dart';
import 'package:ta7t_elbeet/app/routes/app_pages.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.toNamed(Routes.UNITS);
              },
              child: CircleAvatar(
                backgroundColor: ColorsUtilities.appYellow,
                radius: 70.0,
                child: Text(
                  'الوحدات',
                  style: TextStyle(
                      fontSize: 60.sp,
                      fontWeight: FontWeight.bold,
                      color: ColorsUtilities.appWhite),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 150.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Get.toNamed(Routes.MAIN_PRODUCT);
              },
              child: CircleAvatar(
                backgroundColor: ColorsUtilities.appYellow,
                radius: 70.0,
                child: Text(
                  'الاقسام الفرعيه',
                  style: TextStyle(
                      fontSize: 60.sp,
                      fontWeight: FontWeight.bold,
                      color: ColorsUtilities.appWhite),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.NEW_PRODUCT);
              },
              child: CircleAvatar(
                backgroundColor: ColorsUtilities.appYellow,
                radius: 70.0,
                child: Text(
                  'المنتجات',
                  style: TextStyle(
                      fontSize: 60.sp,
                      fontWeight: FontWeight.bold,
                      color: ColorsUtilities.appWhite),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
