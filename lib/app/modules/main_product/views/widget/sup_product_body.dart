import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/service/category_service.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

class SupProductBody extends GetView<CategoryService> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: new BoxDecoration(
                color: ColorsUtilities.appYellow,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: ColorsUtilities.appWhite,
                ),
                onPressed: () {
                  //dialog to get unit data from user
                  Get.defaultDialog(
                    title: 'ادخل الوحدات الخاصه بك',
                    content: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      )),
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.right,
                      controller: controller.txtProduct,
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("الغاء"),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      FlatButton(
                        child: Text("تم"),
                        onPressed: () {
                          controller.productData.add(SubCategory(
                              controller.productData.length,
                              controller.txtProduct.text));
                          Get.back();
                        },
                      ),
                    ],
                    barrierDismissible: false,
                  );
                },
              ),
            ),
            Text(
              'اختر من القائمه',
              style: TextStyle(
                fontSize: 72.sp,
                color: ColorsUtilities.appBlue,
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          margin: EdgeInsets.only(bottom: 20, top: 8),
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.30,
          child: Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            child: Obx(
              () => ListView.builder(
                controller: _scrollController,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Obx(
                            () => Checkbox(
                              onChanged: (bool value) {
                                controller.removeOrAddToSelected(
                                    controller.productData[index].id);
                              },
                              value: controller.seletedCategory.any((element) =>
                                  element.id == controller.productData[index].id),
                              activeColor: Color(0xFF6200EE),
                            ),
                          ),
                          Text(
                            ' ${controller.productData[index].name}',
                            style: TextStyle(
                              color: ColorsUtilities.appWhite,
                              fontSize: 60.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: controller.productData.length,
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
        Obx(
          () => Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Scrollbar(
                isAlwaysShown: true,
                controller: _scrollController,
                child: ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Chip(
                        elevation: 5,
                        backgroundColor: Colors.amber,
                        label: Text(
                          '${controller.seletedCategory[index].name}',
                          style: TextStyle(
                            color: ColorsUtilities.appWhite,
                            fontSize: 50.sp,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: controller.seletedCategory.length,
                ),
              )),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
      ]),
    );
  }
}
