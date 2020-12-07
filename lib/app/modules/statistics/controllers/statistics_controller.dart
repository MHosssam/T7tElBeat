import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatisticsController extends GetxController {
  //TODO: Implement StatisticsController
  
  var touchedIndex ;



  List<BarChartGroupData> rawBarGroups;

  List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex;


  @override
  void onInit() {

    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 15, 12);
    final barGroup3 = makeGroupData(2, 10, 20);
    final barGroup4 = makeGroupData(3, 5, 5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;


  }


  @override
  void onReady() {}

  @override
  void onClose() {}







}
BarChartGroupData makeGroupData(int x, double y1, double y2) {
  return BarChartGroupData(barsSpace: 2, x: x, barRods: [
    BarChartRodData(
      y: y1,
      colors: [const Color(0xff53fdd7)],
      width: 35,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(1), topRight: Radius.circular(1)),
    ),
  ]);
}
