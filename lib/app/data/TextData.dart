


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextData extends AutoSizeText {
  TextData(
      String text, {
        Color color,
        FontWeight fontWeight,
        double fontSize,
        int maxLines,
        TextOverflow textOverflow,
        TextAlign textAlign,
        double height,
      }) : super(text,
      style: TextStyle(
        height: height,
        color: color ?? ColorsUtilities.appGrey,
        fontWeight: fontWeight,
        fontSize: fontSize ?? 40.h,
      ),

      textAlign: textAlign ?? TextAlign.right,
      maxLines: maxLines,
      overflow: textOverflow ?? TextOverflow.ellipsis);
}