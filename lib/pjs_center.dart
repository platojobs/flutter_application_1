
import 'package:flutter/material.dart';

class PjsCenter extends StatelessWidget {
  const PjsCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("center")),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 3, color: Colors.blue),
          ),
          child: Text(
            "hello",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      )
    );
  }
}
