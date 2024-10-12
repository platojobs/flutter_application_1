
import 'package:flutter/material.dart';

class MyAspectRatioWidget extends StatelessWidget {
  const MyAspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(aspectRatio: 3/3,
       child: Container(
        alignment: Alignment.topLeft,
        color: Colors.red,
        child: Text("aspectRatio"),
        ),
    );
  }
}