import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCategory{
  final int id;
  final String name ;

  SubCategory(this.id, this.name);
}


class CategoryService extends GetxService with SingleGetTickerProviderMixin{
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