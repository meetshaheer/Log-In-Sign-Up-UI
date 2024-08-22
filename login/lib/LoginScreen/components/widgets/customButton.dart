import 'dart:ffi';

import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton(
      {super.key,
      required this.height,
      required this.width,
      required this.backgroundColor,
      required this.text,
      required this.iconSpacing,
      required this.buttonIcon,
      required this.buttonTextColor,
      required this.buttonTextSize,
      required this.iconColor,
      required this.iconSize,
      required this.onpressed});
  //
  //
  final double height;
  final double width;
  final Color backgroundColor;
  final String text;
  final double iconSpacing;
  final IconData buttonIcon;
  final Color buttonTextColor;
  final double buttonTextSize;
  final Color iconColor;
  final double iconSize;
  final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
        ),
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style:
                  TextStyle(color: buttonTextColor, fontSize: buttonTextSize),
            ),
            SizedBox(
              width: iconSpacing,
            ),
            Icon(
              buttonIcon,
              color: iconColor,
              size: iconSize,
            )
          ],
        ),
      ),
    );
  }
}
