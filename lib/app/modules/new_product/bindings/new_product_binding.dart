import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/new_product/controllers/new_product_controller.dart';

class NewProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewProductController>(
      () => NewProductController(),
    );
  }
}
