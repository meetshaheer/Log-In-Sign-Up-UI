import 'package:flutter/material.dart';
import 'package:login/LoginScreen/components/background.dart';
import 'package:login/LoginScreen/components/textfield.dart';
import 'package:login/LoginScreen/welcom.dart';

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
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Hello",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 70,
              ),
            ),
            const Text(
              "Sign in to your account",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 50,
            ),
            const textfield(
                hinttext: "Username", prefix_icon: Icon(Icons.person)),
            const SizedBox(
              height: 30,
            ),
            textfield(
              hinttext: "Password",
              prefix_icon: const Icon(Icons.lock),
              is_secure: !issecure,
              postfix_icon: IconButton(
                onPressed: () {
                  setState(() {
                    issecure = !issecure;
                  });
                },
                icon: const Icon(
                  Icons.remove_red_eye,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: size.height * 0.06,
              width: size.width * 0.8,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 217, 0, 255))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => welcom()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LogIn",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
