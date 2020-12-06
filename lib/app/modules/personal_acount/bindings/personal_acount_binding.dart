import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/personal_acount/controllers/personal_acount_controller.dart';

class PersonalAcountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonalAcountController>(
      () => PersonalAcountController(),
    );
  }
}
