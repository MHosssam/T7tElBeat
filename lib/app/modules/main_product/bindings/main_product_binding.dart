import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/main_product/controllers/main_product_controller.dart';

class MainProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainProductController>(
      () => MainProductController(),
    );
  }
}
