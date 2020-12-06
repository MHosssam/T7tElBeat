import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/shop_management/controllers/shop_management_controller.dart';

class ShopManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopManagementController>(
      () => ShopManagementController(),
    );
  }
}
