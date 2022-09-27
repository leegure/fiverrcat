import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  String text;
  double? fontSize;
  FontWeight fontWeight;
  Color? textColor;

  ReusableText({
    required this.text,
    this.fontWeight = FontWeight.w600,
    this.textColor = Colors.white,
    this.fontSize = 18.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      style: TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontFamily: "Quasimoda",
          fontStyle: FontStyle.normal,
          fontSize: fontSize),
      textAlign: TextAlign.left,
      text,
    );
  }
}