import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/product/views/product_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ManagementCard extends StatelessWidget {
  String title;
  String image ;
  ManagementCard(this.title, this.image);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(ProductView());
      },
      child: Column(
        children: [
          Card(
            elevation: 3,
            child: Container(
              height: 350.h,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage(image),
                      fit: BoxFit.cover)),
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
