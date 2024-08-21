import 'package:flutter/material.dart';
import 'package:login/LoginScreen/components/background.dart';
import 'package:login/LoginScreen/components/textfield.dart';

class body extends StatefulWidget {
  const body({
    super.key,
  });

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  bool issecure = true;
  void initState() {
    issecure = false;

    // TODO: implement initState
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return background(
        child: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(),
            const Text(
              "Hello",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 70,
              ),
            ),
            Text(
              "Sign in to your account",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            textfield(hinttext: "Username", prefix_icon: Icon(Icons.person)),
            SizedBox(
              height: 30,
            ),
            textfield(
              hinttext: "Password",
              prefix_icon: Icon(Icons.lock),
              is_secure: !issecure,
              postfix_icon: IconButton(
                onPressed: () {
                  setState(() {
                    issecure = !issecure;
                  });
                },
                icon: Icon(
                  Icons.remove_red_eye,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: size.height * 0.06,
              width: size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("LogIn"),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
