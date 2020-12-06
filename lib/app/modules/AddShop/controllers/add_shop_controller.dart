import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddShopController extends GetxController {
  //TODO: Implement AddShopController

  final dropValue = 'خضار'.obs;

  final profileImageUrl = RxString(null);
  final ImagePicker imagePicker = ImagePicker();

  Future getImage() async {
    final pickedFile = await imagePicker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImageUrl.value = pickedFile.path;
    }
  }


}
