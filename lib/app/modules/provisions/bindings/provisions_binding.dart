import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/provisions/controllers/provisions_controller.dart';

class ProvisionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProvisionsController>(
      () => ProvisionsController(),
    );
  }
}
