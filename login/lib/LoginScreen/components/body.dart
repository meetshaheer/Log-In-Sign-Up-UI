import 'package:flutter/material.dart';
import 'package:login/LoginScreen/components/background.dart';
import 'package:login/LoginScreen/components/textfield.dart';
import 'package:login/LoginScreen/components/widgets/customText.dart';
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
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    void validation() {
      setState(() {
        if (usernameController.text.isEmpty &&
            passwordController.text.isEmpty) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text(
                    "Oops...",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  content: const Text("Please Enter Username & Password"),
                  actions: [
                    SizedBox(
                      height: 40,
                      width: 150,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 217, 0, 255),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Back to LogIn",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    )
                  ],
                );
              });
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const welcom()));
        }
      });
    }

    return background(
        child: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const Text(
            //   "Hello",
            //   style: TextStyle(
            //     fontWeight: FontWeight.w500,
            //     fontSize: 70,
            //   ),
            // ),
            const customtext(
              text: "Hello",
              textColor: Colors.black,
              textBoldness: FontWeight.w500,
              textSize: 70,
            ),
            // const Text(
            //   "Sign in to your account",
            //   style: TextStyle(fontSize: 20),
            // ),
            const customtext(
              text: "SignIn to your account",
              textColor: Colors.black,
              textSize: 20,
            ),
            const SizedBox(
              height: 50,
            ),
            textfield(
                controllerName: usernameController,
                hinttext: "Username",
                prefix_icon: Icon(Icons.person)),
            const SizedBox(
              height: 30,
            ),
            textfield(
              controllerName: passwordController,
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
                  setState(() {
                    validation();
                  });
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   "LogIn",
                    //   style: TextStyle(color: Colors.white, fontSize: 20),
                    // ),
                    customtext(
                      text: "LogIn",
                      textColor: Colors.white,
                      textSize: 20,
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
