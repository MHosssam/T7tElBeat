import 'package:flutter/material.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProvisionTitle extends StatelessWidget {
  final String text;

  ProvisionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 16.0,
      ),
      child: TextData(
        text,
        fontWeight: FontWeight.bold,
        textAlign: TextAlign.right,
        fontSize: 50.h,
        color: ColorsUtilities.appBlue,
      ),
    );
  }
}
