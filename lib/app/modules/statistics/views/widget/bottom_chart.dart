import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/statistics/controllers/statistics_controller.dart';


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
                    pieTouchData:  PieTouchData(touchCallback: (pieTouchResponse) {
                      if (pieTouchResponse.touchInput is FlLongPressEnd ||
                          pieTouchResponse.touchInput is FlPanEnd) {
                       controller.touchedIndex = -1;
                      } else {
                        controller.touchedIndex = pieTouchResponse.touchedSectionIndex;
                      }
                    }),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 0,
                    sections: controller.showingSections()),
              ),
            ),
          ),
        ),
      ],
    );
  }


}
