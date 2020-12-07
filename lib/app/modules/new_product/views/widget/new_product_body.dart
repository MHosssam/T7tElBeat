import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/service/category_service.dart';

class NewProductBody extends GetView<CategoryService> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      body: new
        TabBarView(

        //controller: controller.pageController,
        children: controller.seletedCategory.map((element) {
          return new Card(
            child: new Container(
              height: 450.0,
              width: 300.0,
              child: Center(child: Text(element.name)),
            ),
          );
        }).toList(),
      ),
    );
  }
}

// Obx(
//   () => new PreferredSize(
//     preferredSize: const Size.fromHeight(20.0),
//     child: new Container(
//       height: 50.0,
//       alignment: Alignment.center,
//       child: controller.seletedCategory.isEmpty
//           ? new Container(
//               height: 50.0,
//               color: Colors.green,
//             )
//           : new Container(
//               height: 50.0,
//               color: Colors.black,
//               alignment: Alignment.center,
//               child: Text('${controller.ProductList}'),
//             ),
//     ),
//   ),
// ),