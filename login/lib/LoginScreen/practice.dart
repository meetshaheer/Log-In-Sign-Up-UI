import 'package:flutter/material.dart';
import 'package:login/LoginScreen/components/textfield.dart';

class myappp extends StatelessWidget {
  const myappp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Shaheer " * 60),
            Container(
              height: 200,
              color: Colors.amber,
            ),
            countr()
          ],
        ),
      ),
    );
  }
}

class countr extends StatefulWidget {
  const countr({super.key});

  @override
  State<countr> createState() => _countrState();
}

class _countrState extends State<countr> {
  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return Column(
      children: [
        Text(counter.toString()),
        ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text("Click"))
      ],
    );
  }
}
