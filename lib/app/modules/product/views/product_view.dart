import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/AppBarData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/home_screen_view.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/widget/drawer_data.dart';
import 'package:ta7t_elbeet/app/modules/product/controllers/product_controller.dart';
import 'package:ta7t_elbeet/app/modules/product/views/widget/product_body.dart';

class ProductView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBarData('المنتجات'),
        endDrawer: DrawerData(),
        body: ProductBody(),
      ),
      onWillPop: () {
        return Get.offAll(HomeScreenView());
      },
    );
  }
}
  