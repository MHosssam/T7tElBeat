import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          elevation: 2,
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
          child: InkWell(
            onTap: () {
              Get.defaultDialog(
                title: 'الطلب ',
                content: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          ' شارع قناه السويس',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          ' اتنين كيلو موز',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          ' 01001234567',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          ': العنوان',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          ': الطلب',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          ': رقم الهاتف',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                ),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text('تم'),
                    onPressed: () {
                      Get.back();
                    },
                  )
                ],
              );
            },
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0, top: 8.0),
                    child: TextData(
                      'اسم الاوردر',
                      fontSize: 72.sp,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 16.0,
                    ),
                    child: TextData(
                      'قيد التنفيذ',
                      fontSize: 60.sp,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
                    child: TextData(
                      '26/11/2020 , 3 pm',
                      fontSize: 25.sp,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 35,
    );
  }
}
