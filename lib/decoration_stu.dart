
import 'package:flutter/material.dart';

class MyDecorationWidget extends StatelessWidget {
  const MyDecorationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.amber,
        gradient: LinearGradient(colors: [Colors.red, Colors.orange.shade700]),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow:const  [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            spreadRadius: 10,
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 100),
        child:  Text("按钮"),
      ),
    );
  }
}