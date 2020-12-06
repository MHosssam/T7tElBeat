import 'package:flutter/material.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuggestionContainer extends StatelessWidget {
  final Widget child;


  SuggestionContainer({@required this.child,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 1080.w,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        color: ColorsUtilities.appWhite,
        padding: EdgeInsets.only(top: 16.0, right: 16.0),
        child: child,
      ),
    );
  }
}

