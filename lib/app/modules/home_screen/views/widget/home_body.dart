import 'package:flutter/material.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

import 'confirm_orders.dart';
import 'delivered_orders.dart';
import 'new_orders.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxHeight: 150.0),
            child: Material(
              child: TabBar(
                indicatorColor: ColorsUtilities.appYellow,
                labelColor: ColorsUtilities.appYellow,
                unselectedLabelColor: ColorsUtilities.appBlue,
                tabs: [
                  Tab(
                    text: 'المنتهية',
                    icon: Icon(
                      Icons.event_note,
                    ),
                  ),
                  Tab(
                    text: "قيد التجهيز",
                    icon: Icon(Icons.settings),
                  ),
                  Tab(
                    text: "الجديد",
                    icon: Icon(Icons.new_releases),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                DeliveredOrders(),
                ConfirmedOrders(),
                NewOrders(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
