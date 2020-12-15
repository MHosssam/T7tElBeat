

import 'package:bdaya_custom_splash/bdaya_custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';
import 'package:ta7t_elbeet/app/routes/app_pages.dart';
import 'package:ta7t_elbeet/service/category_service.dart';
import 'package:ta7t_elbeet/service/setting_service.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1080, 1920), allowFontScaling: true);
    return BdayaCustomSplash(
      shimmerBuilder: (child) {
        return Shimmer.fromColors(
          child: child,
          baseColor: ColorsUtilities.appBlue,
          highlightColor: ColorsUtilities.appWhite,
        );
      },
      logoBuilder: () {
        return Center(
          child: TextData(
            'تحت البيت ',
            fontWeight: FontWeight.bold,
            fontSize: 180.sp,
          ),
        );
      },
      onNavigateTo: (result) {
        Get.offNamed(result);
      },
      backgroundBuilder: (Widget child) {
        return child;
      },
      initFunction: () async {
        Get.put(SettingService());
        Get.put(CategoryService());
        return Routes.HOME;
      },
    );
  }
}
