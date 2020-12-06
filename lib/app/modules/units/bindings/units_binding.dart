import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/units/controllers/units_controller.dart';

class UnitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UnitsController());
  }
}
