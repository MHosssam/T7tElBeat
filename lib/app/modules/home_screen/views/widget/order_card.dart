
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/controllers/home_screen_controller.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:ta7t_elbeet_core/models/orders/order.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderCard extends GetView<HomeScreenController> {
  final Order orderData;

  OrderCard(Order orderData)
      : this.orderData = orderData,
        super(key: Key(orderData.id));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/online-shopping.png',
                      fit: BoxFit.fill,
                      width: 150.w,
                    ),
                  ),
                  SizedBox(
                    width: 45.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        TextData(
                          '${orderData.marketName.ar}',
                          fontWeight: FontWeight.bold,
                        ),
                        TextData(
                          '${orderData.marketPhone}',
                          color: ColorsUtilities.appBlue,
                          fontWeight: FontWeight.w600,
                        ),
                        TextData(
                          '${orderData.formattedUserAddress}',
                          textAlign: TextAlign.right,
                          maxLines: 1,
                          color: ColorsUtilities.appYellow,
                        ),
                      ],
                    ),
                  ),
                  //buildTimer(),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              //order info
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.more,
                            color: ColorsUtilities.appYellow,
                            size: 60.h,
                          ),
                          onTap: () {
                            controller.showBottomSheets(orderData.id);
                          },
                        ),
                        Spacer(),
                        TextData(
                          ' رقم الطلب: ',
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        TextData(
                          '${orderData.numId}',
                          color: ColorsUtilities.appBlue,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 7.5,
                        horizontal: 10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextData(
                            'عدد العناصر: ',
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          TextData(
                            '${ orderData.productsCount}',
                            color: ColorsUtilities.appBlue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
