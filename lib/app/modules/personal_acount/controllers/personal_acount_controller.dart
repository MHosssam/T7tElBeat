

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PersonalAcountController extends GetxController {
  //TODO: Implement PersonalAcountController


  final CoverImageUrl = RxString();
  final ImagePicker imagePicker = ImagePicker();

  Future getImage() async {
    final pickedFile = await imagePicker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      CoverImageUrl.value = pickedFile.path;
    }
  }
  final profileImageUrl = RxString();
  final ImagePicker imagePicker1 = ImagePicker();

  Future getImagePro() async {
    final pickedFile = await imagePicker1.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImageUrl.value = pickedFile.path;
    }
  }
}
