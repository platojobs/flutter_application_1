import 'dart:math';

import 'package:flutter/material.dart';

class MyTransformWidget extends StatelessWidget {
  const MyTransformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(100),
      color: Colors.black,
      child: Transform.rotate(
        angle: pi / 6,
        alignment: Alignment.topRight, 
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.green,
          child: Text("Apartment for rentApartment for rent"),
        ),
      ),
    );
  }
}