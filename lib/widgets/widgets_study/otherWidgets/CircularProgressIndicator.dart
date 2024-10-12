import 'package:flutter/material.dart';

class TCircularProgressIndicator extends StatelessWidget {
  const TCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Container(
      padding: EdgeInsets.all(30),
      width: 200,
      height: 200,
     // color: Colors.green,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.white,
      ),
      child: CircularProgressIndicator(
      color: Colors.blue,
      backgroundColor: Colors.grey,
      value: .3,
      strokeWidth: 45,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
    ),
    )],
    );
  }
}
