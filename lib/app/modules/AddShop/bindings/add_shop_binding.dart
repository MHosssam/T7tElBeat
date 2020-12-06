import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/AddShop/controllers/add_shop_controller.dart';

class AddShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddShopController>(
      () => AddShopController(),
    );
  }
}
