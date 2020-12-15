import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/ButtonData.dart';
import 'package:ta7t_elbeet/app/data/txt_field_body.dart';
import 'package:ta7t_elbeet/app/modules/AddShop/controllers/add_shop_controller.dart';
import 'package:ta7t_elbeet/app/modules/product/views/product_view.dart';

class AddShopView extends GetView<AddShopController> {
  @override
  Widget build(BuildContext context) {
    var txtShopName = TextEditingController();
    var txtShopAdress = TextEditingController();
    var txtShopPhone = TextEditingController();
    var txtShopPhone2 = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: ExactAssetImage(
                          'assets/images/cover.jpeg',
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .30,
                    color: Colors.black54.withOpacity(.4),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.getImage();
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TxtFieldBody('اسم المنشاه', txtShopName, TextAlign.right),
              TxtFieldBody('العنوان', txtShopAdress, TextAlign.right),
              TxtFieldBody('رقم الهاتف', txtShopPhone, TextAlign.left ),
              TxtFieldBody('رقم الهاتف2', txtShopPhone2, TextAlign.left),
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => DropdownButton(
                        items: <String>[
                          'خضار',
                          'فاكهه',
                          'صيدليه',
                          'جزار',
                          'بقاله'
                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        value: controller.dropValue.value,
                        onChanged: (val) {
                          controller.dropValue.value = val;
                        },
                      ),
                    ),
                     Obx(()=> Text('${controller.dropValue.value}')),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonData(
                text: 'التالي',
                onTap: () {
                  Get.to(ProductView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
