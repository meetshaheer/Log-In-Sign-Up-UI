import 'package:flutter/material.dart';
import 'package:login/LoginScreen/components/loginbody.dart';

class login extends StatelessWidget {
  const login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: loginbody(),
    );
  }
}
