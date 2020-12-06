import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/controllers/home_screen_controller.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:ta7t_elbeet_core/models/orders/order.dart';

import 'order_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveredOrders extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        var complete = controller.orders.values
            .where((element) => element.state == OrderState.Complete)
            .toList();
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
          child: complete.length != 0
              ?  ListView.builder(
                  itemBuilder: (ctx, i) => OrderCard(complete[i]),
                  itemCount: complete.length,
                ):Column(
            children: [
              Container(
                width: 900.w,
                height: 900.w,
                child: FlareActor(
                  'assets/flare/empty_txs.flr',
                  animation: 'empty',
                ),
              ),
              TextData(
                'لا توجد طلبات في الوقت الحالي',
                fontSize: 60.sp,
                fontWeight: FontWeight.bold,
                color: ColorsUtilities.appYellow,
              )
            ],
          ),
        );
      },
    );
  }
}
