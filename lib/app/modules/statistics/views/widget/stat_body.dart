
import 'package:flutter/material.dart';
import 'package:ta7t_elbeet/app/modules/statistics/views/widget/bottom_chart.dart';

import 'chart.dart';

class StatBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(16.0),
            elevation: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("\$494" , style: TextStyle(fontSize: 25),) ,
                      Text("المكسب" , style: TextStyle(fontSize: 25),) ,
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("300" , style: TextStyle(fontSize: 25),) ,
                      Text("المبيعات" ,style: TextStyle(fontSize: 25),) ,
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("40" , style: TextStyle(fontSize: 25),) ,
                      Text("الطلبات" , style: TextStyle(fontSize: 25),) ,
                    ],
                  ),
                ),
              ],
            ),
          ),
          Chart(),
          BottomChart()
        ],
      ),
    );
  }


}
