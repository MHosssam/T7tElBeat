import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/statistics/views/widget/badge.dart';

class StatisticsController extends GetxController {
  //TODO: Implement StatisticsController

  List<BarChartGroupData> rawBarGroups;

  List<BarChartGroupData> showingBarGroups;

 // int touchedGroupIndex;

  final touchedIndex = RxInt(null);


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


  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex.value;
      final double radius = isTouched ? 110 : 100;
      final double widgetSize = isTouched ? 60 : 50;
      final double fontSize = isTouched ? 20 : 16;


      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 30,
            title: '30% تفاح',
            radius: radius ,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
            badgeWidget: Badge(
              'assets/images/apple.png',
              size: widgetSize ,
              borderColor: const Color(0xff0293ee),
            ),
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 20,
            title: '20% موز',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
            badgeWidget: Badge(
              'assets/images/bananas.png',
              size: widgetSize,
              borderColor: const Color(0xfff8b250),
            ),
            badgePositionPercentageOffset: .98,
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 28,
            title: '28% خوخ',
            radius: radius ,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
            badgeWidget: Badge(
              'assets/images/peach.png',
              size: widgetSize,
              borderColor: const Color(0xff845bef),
            ),
            badgePositionPercentageOffset: .98,
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 22,
            title: ' 22% خيار',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
            badgeWidget: Badge(
              'assets/images/cucumber.png',
              size: widgetSize,
              borderColor: const Color(0xff13d38e),
            ),
            badgePositionPercentageOffset: .98,
          );
        default:
          return null;
      }
    });
  }









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
