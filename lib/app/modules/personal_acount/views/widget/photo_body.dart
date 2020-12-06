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
                    image: DecorationImage(
                      image: ExactAssetImage(
                        'assets/images/cover.jpeg',
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
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
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1884573/pexels-photo-1884573.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
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
          )
        ],
      ),
    );
  }
}
