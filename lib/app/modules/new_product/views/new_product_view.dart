import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta7t_elbeet/app/modules/new_product/views/widget/new_product_body.dart';
import 'package:ta7t_elbeet/service/category_service.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

class NewProductView extends GetView<CategoryService> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.seletedCategory.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('المنتجات'),
          centerTitle: true,
          actions: [
            FlatButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'تم',
                style: TextStyle(
                  color: ColorsUtilities.appWhite,
                  fontSize: 50.sp,
                ),
              ),
            ),
          ],
          bottom: TabBar(
            onTap: (index){
             // controller.pageController.jumpToPage(index);
            },
            isScrollable: true,
            tabs: controller.seletedCategory.map((element) => Tab(text: element.name,)).toList(),
           // controller:controller.tabController ,
          ),
        ),
        body: NewProductBody(),
      ),
    );
  }
}
