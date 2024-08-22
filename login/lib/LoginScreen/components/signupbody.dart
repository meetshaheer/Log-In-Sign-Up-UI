import 'package:flutter/material.dart';
import 'package:login/LoginScreen/components/background.dart';
import 'package:login/LoginScreen/components/textfield.dart';
import 'package:login/LoginScreen/components/widgets/customIconButton.dart';
import 'package:login/LoginScreen/components/widgets/customText.dart';
import 'package:login/LoginScreen/login.dart';
import 'package:login/LoginScreen/welcom.dart';

class signupbody extends StatefulWidget {
  const signupbody({
    super.key,
  });

  @override
  State<signupbody> createState() => _signupbodyState();
}

class _signupbodyState extends State<signupbody> {
  bool issecure = true;
  void initState() {
    issecure = false;

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController repeatpasController = TextEditingController();

    void validation() {
      setState(() {
        if (usernameController.text.isEmpty &&
            passwordController.text.isEmpty &&
            nameController.text.isEmpty &&
            phoneController.text.isEmpty &&
            repeatpasController.text.isEmpty) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text(
                    "Oops...",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  content: const Text("Please Fillup all the required info"),
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
              text: "Hurra..",
              textColor: Colors.black,
              textBoldness: FontWeight.w500,
              textSize: 40,
            ),
            // const Text(
            //   "Sign in to your account",
            //   style: TextStyle(fontSize: 20),
            // ),
            const customtext(
              text: "Create account to enter",
              textColor: Colors.black,
              textSize: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            textfield(
                controllerName: usernameController,
                hinttext: "Your Name",
                prefix_icon: Icon(Icons.person)),
            const SizedBox(
              height: 30,
            ),
            textfield(
                controllerName: usernameController,
                hinttext: "Your Email",
                prefix_icon: Icon(Icons.person)),
            const SizedBox(
              height: 30,
            ),
            textfield(
                controllerName: usernameController,
                hinttext: "Your Phone Number",
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
              height: 30,
            ),
            textfield(
              controllerName: passwordController,
              hinttext: "Repeate Password",
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
              height: 30,
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
                      text: "Sign-Up",
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
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const customtext(
                  text: "Have an Account? ",
                  textColor: Colors.black,
                  textSize: 15,
                  textBoldness: FontWeight.w300,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: const customtext(
                    text: "LogIn ",
                    textColor: Colors.black,
                    textBoldness: FontWeight.bold,
                  ),
                ),
                const customtext(
                  text: "here",
                  textColor: Colors.black,
                  textSize: 15,
                  textBoldness: FontWeight.w300,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
