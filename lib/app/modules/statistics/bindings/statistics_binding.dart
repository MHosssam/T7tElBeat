import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/statistics/controllers/statistics_controller.dart';

class StatisticsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatisticsController>(
      () => StatisticsController(),
    );
  }
}
