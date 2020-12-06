import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SubCategory{
  final int id;
  final String name ;

  SubCategory(this.id, this.name);
}
class MainProductController extends GetxService with SingleGetTickerProviderMixin{
TabController tabController;
PageController pageController = PageController(initialPage: 0);
  final txtProduct = TextEditingController();

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(
      vsync: this,
      length: seletedCategory.length,
    );
  }

  //final sr = <RxMap<String, Object>> [].obs;

  // final RxList<RxMap<String, Object>> ProductList = [
  //   {'name': 'ارز', 'value': false}.obs,
  //   {'name': 'مكرونه', 'value': false}.obs,
  //   {'name': 'برتقال', 'value': false}.obs,
  //   {'name': 'تفاح', 'value': false}.obs,
  //   {'name': 'موز', 'value': false}.obs,
  //   {'name': 'لبن', 'value': false}.obs,
  //   {'name': 'سكر', 'value': false}.obs,
  //   {'name': 'شاي', 'value': false}.obs,
  //   {'name': 'نسكافيه', 'value': false}.obs,
  //   {'name': 'فراخ', 'value': false}.obs,
  //   {'name': 'لحمه', 'value': false}.obs,
  //   {'name': 'كبده', 'value': false}.obs,
  //   {'name': 'سمك', 'value': false}.obs,
  // ].obs;

  final seletedCategory = <SubCategory>[].obs;

  final RxList<SubCategory> productData = [
    SubCategory(1, 'ارز'),
    SubCategory(2, 'عيش'),
    SubCategory(3, 'مكرونه'),
    SubCategory(4, 'لبن'),
    SubCategory(5, 'حلويات'),
    SubCategory(6, 'سكر'),
    SubCategory(7, 'شاي'),
    SubCategory(8, 'نسكافيه'),
    SubCategory(9, 'فراخ'),
    SubCategory(10, 'لحمه'),
    SubCategory(11, 'كبده'),
  ].obs;

  void removeOrAddToSelected(int id) {
    bool v = seletedCategory.any((element) => element.id == id);
    if (v) {
      seletedCategory.removeWhere((element) => element.id == id);
    //   seletedCategory.refresh();
    } else {
      final item = productData.firstWhere((element) => element.id == id, orElse: ()=>null);
      seletedCategory.add(item);
      // seletedCategory.refresh();
    }
  }


}




/*
*
  final seletedCategory = <SubCategory>[].obs;

  final RxList<SubCategory> Productdata = [
    SubCategory(1, 'ارز'),
    SubCategory(2, 'عيش'),
    SubCategory(3, 'مكرونه'),
    SubCategory(4, 'لبن'),
    SubCategory(5, 'حلويات'),
    SubCategory(6, 'سكر'),
    SubCategory(7, 'شاي'),
    SubCategory(8, 'نسكافيه'),
    SubCategory(9, 'فراخ'),
    SubCategory(10, 'لحمه'),
    SubCategory(11, 'كبده'),
  ].obs;


  void removeOrAddToSelected(int id) {
    if (seletedCategory.any((element) => element.id == id)) {
      seletedCategory.removeWhere((element) => element.id == id);
      // seletedCategory.refresh();

    } else {
      final item = Productdata.firstWhere((element) => element.id == id);
      seletedCategory.add(item);
      // seletedCategory.refresh();
    }
  }

* */
