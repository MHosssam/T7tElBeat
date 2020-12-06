import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnitsController extends GetxController {
  //TODO: Implement UnitsController

  final txt = TextEditingController().obs;
  final val = 0.0.obs;

  final RxList<RxMap<String, Object>> UnitsList = [
    {'name': 'كيلو', 'value': false}.obs,
    {'name': 'جرام', 'value': false}.obs,
    {'name': 'لتر', 'value': false}.obs,
    {'name': 'قطعه', 'value': false}.obs,
    {'name': 'علبه', 'value': false}.obs,
    {'name': 'متر', 'value': false}.obs,
  ].obs;




  // final RxMap<String, Object> UnitsMap = {
  //   'كيلو': true,
  //   'جرام': false,
  //   'لتر': true,
  //   'قطعه': false,
  //   'علبه': false,
  //   'متر': false
  // }.obs;
  //
  // List<String> fff() {
  //   var myl = new List<String>();
  //   for (var n in UnitsMap.entries) {
  //     if (n.value) {
  //       myl.add(n.key);
  //     }
  //   }
  //   return myl;
  // }
}
