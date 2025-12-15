import 'package:flutter/material.dart';

class PJStudyContainer extends StatelessWidget {
  const PJStudyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello")),
      body: Container(
        width: 200,
        height: 200,
        margin: EdgeInsets.only(left: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 3, color: Colors.blue),
        ),
        transform: Matrix4.rotationZ(0.1),
        child: Text(
          "hello",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
