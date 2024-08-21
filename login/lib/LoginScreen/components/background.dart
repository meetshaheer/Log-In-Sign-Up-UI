import 'package:flutter/material.dart';

class background extends StatelessWidget {
  const background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -70,
            left: -80,
            child: Image.asset(
              "assets/component1.png",
              width: size.width * 0.6,
            ),
          ),
          Positioned(
            bottom: -43,
            right: -100,
            child: Image.asset(
              "assets/component2.png",
              width: size.width * 0.6,
            ),
          ),
        ],
      ),
    );
  }
}
