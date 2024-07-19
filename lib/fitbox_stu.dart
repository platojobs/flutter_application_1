import 'package:flutter/material.dart';


class MyFitBoxWidget extends StatelessWidget {
  const MyFitBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          wcontainner(BoxFit.none,color: Colors.black),
          const  Text("Wendexx"),
           wcontainner(BoxFit.contain,color: Colors.blue),
           const Text("FlutterXX"),
        ],
      ),
    );
  }
}

Widget wcontainner(BoxFit boxfit, {Color color = Colors.red}) {
  return ClipRect(
    child: Container(
        width: 150,
        height: 150,
        color: Colors.amber,
        child: FittedBox(
          fit: boxfit,
          child: Container(
            width: 200,
            height: 160,
            color: color,
          ),
        )),
  );
}
