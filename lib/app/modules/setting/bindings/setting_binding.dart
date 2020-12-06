import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/setting/controllers/setting_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
       SettingController(),
    );
  }
}
