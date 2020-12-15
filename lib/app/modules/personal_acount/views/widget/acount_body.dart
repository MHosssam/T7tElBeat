import 'package:flutter/material.dart';
import 'package:ta7t_elbeet/app/data/ButtonData.dart';

import 'photo_body.dart';
import '../../../../data/txt_field_body.dart';

class AccountBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var txtAdress = TextEditingController();
    var txtName = TextEditingController();
    var txtPhone = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          PhotoBody(),
          TxtFieldBody('اسم المحل' , txtName ,  TextAlign.right),
          TxtFieldBody('العنوان', txtAdress ,  TextAlign.right  ),
          TxtFieldBody('رقم الهاتف', txtPhone , TextAlign.right),
          SizedBox(
            height: 50,
          ),
          ButtonData(
            text: 'تحديث',
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
