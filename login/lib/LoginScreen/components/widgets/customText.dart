import 'package:flutter/material.dart';

class customtext extends StatelessWidget {
  const customtext(
      {super.key,
      required this.text,
      required this.textColor,
      this.textSize,
      this.textAlignment,
      this.textBoldness});

  final String text;
  final Color textColor;
  final double? textSize;
  final TextAlign? textAlignment;
  final FontWeight? textBoldness;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlignment,
      style: TextStyle(
          color: textColor, fontSize: textSize, fontWeight: textBoldness),
    );
  }
}
