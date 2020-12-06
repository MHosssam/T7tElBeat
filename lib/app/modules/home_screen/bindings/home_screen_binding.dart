import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/controllers/home_screen_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>HomeScreenController());
  }
}
