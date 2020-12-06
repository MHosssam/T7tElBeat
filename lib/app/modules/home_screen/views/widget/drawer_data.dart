import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/home_screen_view.dart';
import 'package:ta7t_elbeet/app/modules/login/views/home_view.dart';
import 'package:ta7t_elbeet/app/modules/notification/views/notification_view.dart';
import 'package:ta7t_elbeet/app/modules/personal_acount/views/personal_acount_view.dart';
import 'package:ta7t_elbeet/app/modules/product/views/product_view.dart';
import 'package:ta7t_elbeet/app/modules/provisions/views/provisions_view.dart';
import 'package:ta7t_elbeet/app/modules/setting/views/setting_view.dart';
import 'package:ta7t_elbeet/app/modules/shop_management/views/shop_management_view.dart';
import 'package:ta7t_elbeet/app/modules/statistics/views/statistics_view.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/views/suggestions_view.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

class DrawerData extends StatelessWidget {
  Color iconColor = ColorsUtilities.appYellow;
  Color titleColor = ColorsUtilities.appBlue;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: ColorsUtilities.appWhite),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 3,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 200.w,
            ),
            Spacer(),
            ListTile(
              onTap: () {
                Get.offAll(HomeScreenView());
              },
              title: TextData(
                'الصفحة الرئيسية',
                color: titleColor,
              ),
              leading: Icon(
                Icons.home,
                color: iconColor,
                size: 50.h,
              ),
            ),
            ListTile(
              onTap: () {
                Get.offAll(ShopManagementView());
              },
              title: TextData(
                'ادارة المحلات',
                color: titleColor,
              ),
              leading: Icon(
                Icons.store,
                color: iconColor,
                size: 50.h,
              ),
            ),
            ListTile(
              onTap: () {
                Get.offAll(PersonalAcountView());
              },
              title: TextData(
                'الحساب الشخصي',
                color: titleColor,
              ),
              leading: Icon(
                Icons.person,
                size: 60.h,
                color: iconColor,
              ),
            ),
            ListTile(
              onTap: () {
                Get.offAll(NotificationView());
              },
              title: TextData(
                'الإشعارات',
                color: titleColor,
              ),
              leading: Icon(
                Icons.notifications,
                size: 60.h,
                color: iconColor,
              ),
            ),
            ListTile(
              onTap: () {
                Get.offAll(ProductView());
              },
              title: TextData(
                'المنتجات',
                color: titleColor,
              ),
              leading: Icon(
                Icons.shopping_basket,
                size: 60.h,
                color: iconColor,
              ),
            ),
            ListTile(
              onTap: () {
                Get.offAll(StatisticsView());
              },
              title: TextData(
                'الإحصائيات',
                color: titleColor,
              ),
              leading: Icon(
                Icons.trending_up,
                color: iconColor,
                size: 60.h,
              ),
            ),
            ListTile(
              onTap: () {
                Get.offAll(SuggestionsView());
              },
              title: TextData(
                'الشكاوى و الإقتراحات',
                color: titleColor,
                maxLines: 2,
              ),
              leading: Icon(
                Icons.receipt,
                size: 60.h,
                color: iconColor,
              ),
            ),
            ListTile(
              onTap: () {
                Get.offAll(SettingView());
              },
              title: TextData(
                'الإعدادات',
                color: titleColor,
              ),
              leading: Icon(
                Icons.settings,
                size: 60.h,
                color: iconColor,
              ),
            ),
            ListTile(
              onTap: () {
                Get.offAll(ProvisionsView());
              },
              title: TextData(
                'الشروط و الاحكام',
                color: titleColor,
              ),
              leading: Icon(
                Icons.gavel,
                size: 60.h,
                color: iconColor,
              ),
            ),
            ListTile(
              onTap: () {
                Get.offAll(LoginView());
              },
              title: TextData(
                'تسجيل الجروج',
                color: titleColor,
              ),
              leading: Icon(
                Icons.exit_to_app_rounded,
                size: 60.h,
                color: iconColor,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
