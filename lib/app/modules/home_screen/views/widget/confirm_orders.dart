import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/controllers/home_screen_controller.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/widget/order_card.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:ta7t_elbeet_core/models/orders/order.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmedOrders extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
          () {
        var preparing = controller.orders.values
            .where((o) =>
        o.state == OrderState.Preparing ||
            o.state == OrderState.Delivering)
            .toList();
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
          child: preparing.length == 0
              ? Column(
            children: [
              Container(
                width: 900.w,
                height: 900.w,
                child: FlareActor(
                  'assets/flare/Arrow_Swipe_Animation.flr',
                  animation: 'arrow_right',
                ),
              ),
              TextData(
                'اقبل طلب من الطلبات الجديدة',
                fontSize: 60.sp,
                fontWeight: FontWeight.bold,
                color: ColorsUtilities.appYellow,
              )
            ],
          )
              : ListView.builder(
            itemBuilder: (ctx, i) => OrderCard(preparing[i]),
            itemCount: preparing.length,
          ),
        );
      },
    );
  }
}
