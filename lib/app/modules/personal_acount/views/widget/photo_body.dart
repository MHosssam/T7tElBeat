import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/personal_acount/controllers/personal_acount_controller.dart';

class PhotoBody extends StatelessWidget {
  final controller = Get.put(PersonalAcountController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .9,
            height: MediaQuery.of(context).size.height * .40,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height * .30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: controller.CoverImageUrl.value == null
                      ? Image.asset('assets/images/cover.jpeg')
                      : Image.file(File(controller.CoverImageUrl.value)),
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25.0,
                  child: IconButton(
                    onPressed: () {
                      controller.getImage();
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: controller.profileImageUrl.value == null
                    ? AssetImage('assets/images/cover.jpeg' ,)
                    : FileImage(File(controller.profileImageUrl.value)),
              ),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 25.0,
                child: IconButton(
                  onPressed: () {
                    controller.getImagePro();
                  },
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
