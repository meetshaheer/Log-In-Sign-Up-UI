import 'package:flutter/material.dart';

// ignore: camel_case_types
class customIconButon extends StatelessWidget {
  const customIconButon(
      {super.key,
      required this.onpressed,
      required this.icon,
      required this.iconColor,
      required this.iconSize});

  final void Function() onpressed;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onpressed,
        icon: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ));
  }
}
