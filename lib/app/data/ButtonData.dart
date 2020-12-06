import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';

import 'TextData.dart';
class ButtonData extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double broderRadius;
  final String text;
  final EdgeInsetsGeometry margin;
  final Function onTap;
  final List<BoxShadow> shadow;
  ButtonData(
      {this.text = '',
        this.color,
        this.broderRadius = 8.0,
        this.height,
        this.width,
        this.margin = const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        this.onTap,
        this.shadow
      });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: InkWell(
        onTap: onTap,
        borderRadius:  BorderRadius.circular(broderRadius),
        child: Container(
          width: width ?? ScreenUtil().screenWidth,
          height: height?? 110.h,
          margin: EdgeInsets.all(4.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              boxShadow: shadow,
              color: color ?? ColorsUtilities.appBlue,
              borderRadius: BorderRadius.circular(broderRadius)),
          child: TextData(
            text,
            color: ColorsUtilities.appWhite,
            fontWeight: FontWeight.bold,
            fontSize: 50.h,
          ),
        ),
      ),
    );
  }
}