
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class Badge extends StatelessWidget {
  final String svgAsset;
  final double size;
  final Color borderColor;

  const Badge(
      this.svgAsset, {
        Key key,
        @required this.size,
        @required this.borderColor,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(
            svgAsset ,
          ),
          fit: BoxFit.cover,
        ) ,
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
    );
  }
}