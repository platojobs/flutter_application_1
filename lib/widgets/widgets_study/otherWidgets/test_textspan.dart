
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello"),
      ),
      body: const Text.rich(TextSpan(children: [
        WidgetSpan(
            child: Icon(
          Icons.face,
          color: Colors.blue,
        )),
        TextSpan(
            text: "hello",
            style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold)),
        TextSpan(
            text: "Plato", style: TextStyle(color: Colors.red, fontSize: 25)),
        TextSpan(
            text: "Jobs", style: TextStyle(color: Colors.orange, fontSize: 38)),
      ])),
    );
  }
}

