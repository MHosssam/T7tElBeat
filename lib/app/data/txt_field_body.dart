import 'package:flutter/material.dart';


class TxtFieldBody extends StatelessWidget {
  String name ;
  TextEditingController txt ;
  TextAlign txtAlign ;
  TxtFieldBody(this.name , this.txt ,this.txtAlign );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              decoration: InputDecoration(
                  labelText: name,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              keyboardType: TextInputType.text,
              controller: txt,
              textAlign: txtAlign,

            ),
          ),
        ),
      ],
    );
  }
}
