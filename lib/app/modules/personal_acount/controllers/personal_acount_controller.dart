import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PersonalAcountController extends GetxController {
  //TODO: Implement PersonalAcountController


  final profileImageUrl = RxString(null);
  final ImagePicker imagePicker = ImagePicker();

  Future getImage() async {
    final pickedFile = await imagePicker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
       profileImageUrl.value = pickedFile.path;
    }
  }
}
