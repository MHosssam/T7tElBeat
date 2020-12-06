
import 'package:get/get.dart';
import 'package:ta7t_elbeet_core/models/orders/order.dart';

 class HomeScreenController extends GetxController {
  //static HomeScreenController get to => Get.find();


  final count = 0.obs;
  final orders = <String, Order>{}.obs;

  void showBottomSheets(String id) async {
   var order = orders[id];
   // var res = await Get.bottomSheet<TimeState>(OrderDetails(orderData: order),
   //     isScrollControlled: true);
  }

  @override
  void onInit() {
  }

  @override
  void onReady() {}

  @override
  void onClose() {
  }

  void increment() => count.value++;
}