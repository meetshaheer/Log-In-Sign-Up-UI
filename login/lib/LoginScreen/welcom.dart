import 'package:flutter/material.dart';
import 'package:login/LoginScreen/components/customButton.dart';
import 'package:login/LoginScreen/login.dart';

class welcom extends StatelessWidget {
  const welcom({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 145, 33, 155),
              Color.fromARGB(255, 72, 9, 96)
            ],
          )),
        ),
        title: const Text(
          "Dashboard Screen",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Image.asset(
              "assets/oops.png",
              width: size.width * 0.9,
            ),
            customButton(
                height: size.height * 0.06,
                width: size.width * 0.5,
                backgroundColor: Color.fromARGB(255, 217, 0, 255),
                text: "Close The App",
                iconSpacing: 10,
                buttonIcon: Icons.close_fullscreen,
                buttonTextColor: Colors.white,
                buttonTextSize: 18,
                iconColor: Colors.white,
                iconSize: 20,
                onpressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
