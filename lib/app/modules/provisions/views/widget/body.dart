import 'package:flutter/material.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';

class Body extends StatelessWidget {
  final text;

  Body(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: TextData(
        text,
        textOverflow: TextOverflow.visible,
        textAlign: TextAlign.right,
      ),
    );
  }
}
