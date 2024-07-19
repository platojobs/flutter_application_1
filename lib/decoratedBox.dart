import 'package:flutter/material.dart';

class MyDecoratedBoxWidget extends StatelessWidget {
  const MyDecoratedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.amber),
          child: Center(
            child: Text("DecoratedBox"),
          ),
        ),
        DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              widthFactor: 1,
              heightFactor: 1,
              child: Text("DecoratedBox777"),
            )),
      ],
    );
  }
}
