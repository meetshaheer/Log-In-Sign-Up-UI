import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({
    super.key,
    required this.hinttext,
    required this.prefix_icon,
    this.postfix_icon,
    this.is_secure,
  });
  final String hinttext;
  final Icon prefix_icon;
  final IconButton? postfix_icon;
  final bool? is_secure;

  void valuechange() {}

  @override
  Widget build(BuildContext context) {
    return textFieldContainer(
      child: TextField(
        obscureText: is_secure ?? false,
        cursorWidth: 1,
        style: const TextStyle(
          fontSize: 20,
        ),
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            hintText: hinttext,
            border: InputBorder.none,
            prefixIcon: prefix_icon,
            suffixIcon: postfix_icon),
      ),
    );
  }
}

class textFieldContainer extends StatelessWidget {
  const textFieldContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 244, 219, 255),
      ),
      child: child,
    );
  }
}
