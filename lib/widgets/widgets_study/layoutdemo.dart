import 'package:flutter/material.dart';

class Layoutdemo extends StatelessWidget {
  const Layoutdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.black,
            width: 8,
          )
        ),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.white,
              width: 8.0
            )
          ),
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
