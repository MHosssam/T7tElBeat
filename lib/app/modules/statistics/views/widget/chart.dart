import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/statistics/controllers/statistics_controller.dart';

class Chart extends GetView<StatisticsController> {

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Card(
        elevation: 0,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: const Color(0xff2c4260),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'المكسب',
                style: TextStyle(color: Colors.white, fontSize: 22),
                textAlign: TextAlign.right,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: BarChart(
                    BarChartData(
                      maxY: 15,
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: SideTitles(
                          showTitles: true,
                          getTextStyles: (value) => const TextStyle(
                              color: Color(0xff7589a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                          margin: 10,
                          getTitles: (double value) {
                            switch (value.toInt()) {
                              case 0:
                                return '02:00pm';
                              case 1:
                                return '04:00pm';
                              case 2:
                                return '06:00pm';
                              case 3:
                                return '08:00pm';
                              default:
                                return '';
                            }
                          },
                        ),
                        leftTitles: SideTitles(
                          showTitles: true,
                          getTextStyles: (value) => const TextStyle(
                              color: Color(0xff7589a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          margin: 20,
                          reservedSize: 14,
                          getTitles: (value) {
                            if (value == 0) {
                              return '1';
                            } else if (value == 7) {
                              return '4';
                            } else if (value == 14) {
                              return '7';
                            } else {
                              return '';
                            }
                          },
                        ),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      barGroups: controller.showingBarGroups,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
