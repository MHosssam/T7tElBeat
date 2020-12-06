import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:ta7t_elbeet/app/modules/units/controllers/units_controller.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

class UnitsBody extends GetView<UnitsController> {
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
                      controller: controller.txt.value,
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
                          controller.UnitsList.add({
                            'name': controller.txt.value.text,
                            'value': true
                          }.obs);
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
          child: Obx(
            () => ListView.builder(
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
                              controller.UnitsList[index]['value'] = value;
                            },
                            value: controller.UnitsList[index]['value'],
                            activeColor: Color(0xFF6200EE),
                          ),
                        ),
                        Text(
                          ' ${controller.UnitsList[index]['name']}',
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
              itemCount: controller.UnitsList.length,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.2,
          child: Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(
                    () {
                      if (controller.UnitsList[index]['value'] == true) {
                        return new Chip(
                          elevation: 5,
                          backgroundColor: Colors.amber,
                          label: Text(
                            '${controller.UnitsList[index]['name']}',
                            style: TextStyle(
                              color: ColorsUtilities.appWhite,
                              fontSize: 50.sp,
                            ),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                );
              },
              itemCount: controller.UnitsList.length,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
      ]),
    );
  }
}
