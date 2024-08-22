import 'package:flutter/material.dart';

class customIconButon extends StatelessWidget {
  const customIconButon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.facebook,
          color: Colors.blueAccent,
          size: 50,
        ));
  }
}
