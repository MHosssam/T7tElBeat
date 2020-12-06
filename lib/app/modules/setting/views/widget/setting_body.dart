import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';
import 'package:ta7t_elbeet/app/modules/setting/controllers/setting_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta7t_elbeet/app/modules/setting/views/widget/eshtrak_body.dart';
import 'package:ta7t_elbeet/app/modules/setting/views/widget/radio_body.dart';
import 'package:ta7t_elbeet/app/modules/setting/views/widget/shop_availability.dart';

class SettingBody extends GetView<SettingController> {
  //final controller = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextData(
                  'الحاله',
                  fontSize: 72.sp,
                ),
              ),
              RadioBody(
                shopAvailability: ShopAvailability.Open,
                title: 'متاح',
                color: Colors.lightGreenAccent,
              ),
              RadioBody(
                shopAvailability: ShopAvailability.Busy,
                title: 'مشغول',
                color: Colors.orangeAccent,
              ),
              RadioBody(
                shopAvailability: ShopAvailability.Closed,
                title: 'مغلق',
                color: Colors.red,
              ),
            ],
          ),
           Row(
              children: [
                EshtrakBody('نهاية الاشتراك', controller.dateEnd),
                EshtrakBody('بدايه الاشتراك', controller.dateStart),
              ],
            ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: TextData(
                  'تجديد الاشتراك',
                  fontSize: 72.sp,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icons/whatsapp_icon.png',
                      fit: BoxFit.cover,
                      width: 100.h,
                      height: 100.h,
                    ),
                    TextData(
                      '+201001234567',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 72.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
