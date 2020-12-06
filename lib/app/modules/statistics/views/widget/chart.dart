import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {

  final Color leftBarColor = const Color(0xff53fdd7);

  final double width = 35;

  List<BarChartGroupData> rawBarGroups;

  List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex;

  @override
  void initState() {
    super.initState();
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
                      barGroups: showingBarGroups,
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
  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 2, x: x, barRods: [
      BarChartRodData(
        y: y1,
        colors: [leftBarColor],
        width: width,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(1), topRight: Radius.circular(1)),
      ),
    ]);
  }
}
