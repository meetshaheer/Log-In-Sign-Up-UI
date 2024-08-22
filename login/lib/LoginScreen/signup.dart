import 'package:flutter/material.dart';
import 'package:login/LoginScreen/components/loginbody.dart';
import 'package:login/LoginScreen/components/signupbody.dart';

class signup extends StatelessWidget {
  const signup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: signupbody(),
    );
  }
}
