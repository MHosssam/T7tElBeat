import 'package:get/get.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

class NotificationController extends GetxController {
  //TODO: Implement NotificationController
  
  final count = 0.obs;
  final colorCard = ColorsUtilities.appWhite .obs ;
  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void increment() => count.value++;
}
