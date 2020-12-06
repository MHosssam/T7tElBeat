import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/routes/app_pages.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

import 'management_card.dart';

class ManagementBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          ManagementCard('بتاع الخضار' ,'assets/images/cover.jpeg' ),
          ManagementCard('بتاع الفاكهه' ,'assets/images/cover.jpeg' ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsUtilities.appBlue,
        onPressed: () {
          Get.toNamed(Routes.ADD_SHOP);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
