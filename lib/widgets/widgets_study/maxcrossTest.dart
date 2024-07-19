import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class maxcrossTest extends StatelessWidget {
  const maxcrossTest({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.black,
        ),


        Positioned(
            left: 20,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            )),
        Positioned(
            left: 50,
            top: 50,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            )),
      ],
    ),
    );
  }
}
