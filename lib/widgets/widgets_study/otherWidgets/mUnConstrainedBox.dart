import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MUnConstrainedBox extends StatelessWidget {
  const MUnConstrainedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        child: Container(
          width: 10,
          height: 10,
          color: Colors.red,
        ),
       constraints: BoxConstraints(
          minHeight: 50, minWidth: 50, maxHeight: 200, maxWidth: 200),
       );
  }
}
