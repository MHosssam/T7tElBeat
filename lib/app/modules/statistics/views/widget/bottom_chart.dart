import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/statistics/controllers/statistics_controller.dart';

import 'badge.dart';

class BottomChart extends GetView<StatisticsController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Text(
              'العناصر الاكثر مبيعا',
              style: TextStyle(
                fontSize: 60.sp,
              ),
            )),
        AspectRatio(
          aspectRatio: 1.7,
          child: Card(
            color: Colors.white,
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                    pieTouchData:
                        PieTouchData(touchCallback: (pieTouchResponse) {
                      if (pieTouchResponse.touchInput is FlLongPressEnd ||
                          pieTouchResponse.touchInput is FlPanEnd) {
                        controller.touchedIndex = -1;
                      } else {
                        controller.touchedIndex =
                            pieTouchResponse.touchedSectionIndex;
                      }
                    }),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 0,
                    sections: showingSections()),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == controller.touchedIndex;
      final double radius = isTouched ? 110 : 100;
      final double widgetSize = isTouched ? 60 : 50;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 30,
            title: '30% تفاح',
            radius: radius,
            badgeWidget: Badge(
              'assets/images/apple.png',
              size: widgetSize,
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
            radius: radius,
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
