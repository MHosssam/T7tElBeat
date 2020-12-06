import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/controllers/suggestions_controller.dart';

class SuggestionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuggestionsController>(
      () => SuggestionsController(),
    );
  }
}
