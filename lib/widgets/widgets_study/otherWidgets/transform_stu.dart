import 'package:flutter/material.dart';

class TransformFF extends StatelessWidget {
  const TransformFF({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        color: Colors.grey,
        child: Transform(
          alignment: Alignment.topLeft,
          transform: Matrix4.rotationZ(0.7),
          child: Container(
            color: Colors.red,
            padding: const EdgeInsets.all(10),
            child:const  Text("关不上的窗--周传雄"),
          ),
        ),
      ),
    );
  }
}
