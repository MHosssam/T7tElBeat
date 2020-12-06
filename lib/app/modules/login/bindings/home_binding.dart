import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/login/controllers/home_controller.dart';


class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
