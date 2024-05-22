import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class maxcrossTest extends StatelessWidget {
  const maxcrossTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Container(
        width: 100,
        height: 100,
        color: Colors.red,
       ),
       Container(
        width: 100,
        height: 100,
        color: Colors.blue,
       ),
       const Text("Text",style: TextStyle(fontSize: 24,color: Colors.green,backgroundColor: Colors.yellow),),
       const Text("Text1000",style: TextStyle(fontSize: 24,color: Colors.green,backgroundColor: Colors.orange),),

      ],
    );
  }
}
