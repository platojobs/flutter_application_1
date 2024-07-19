
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text("Hello world! I'm Jack.Hello world! I'm Jack.Hello world! I'm Jack.v ",
      textAlign: TextAlign.center,
      textScaler: TextScaler.linear(1.5),
      style: TextStyle(
        fontSize: 20,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.bold,
        color: Colors.red,
        fontFamily: "微软雅黑",
        decoration: TextDecoration.underline,
        decorationColor: Colors.green,
        decorationStyle: TextDecorationStyle.wavy,
        decorationThickness: 2,
        letterSpacing: 2,
        wordSpacing: 2,
        background: Paint()
          ..color = Colors.yellow
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2,
      )
    );
  }
}



class MyTextSapnWidget extends StatelessWidget {
  const MyTextSapnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(
      text: "Hello",
      style: TextStyle(
        fontSize: 24,
        color: Colors.red,
        fontFamily: "微软雅黑",
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: "My",
          style: TextStyle(
            fontSize: 20,
            color: Colors.yellow,
            fontFamily: "微软雅黑",
            fontWeight: FontWeight.w100,
          ),
        ),
        TextSpan(
          text: "Example",
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue,
            fontFamily: "微软雅黑",
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    ));
  }
}


class MyDedaultTextStyleWidget extends StatelessWidget {
  const MyDedaultTextStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTextStyle(
      style: TextStyle(
        fontSize: 24,
        color: Colors.blue,
        fontFamily: "momo",
        fontWeight: FontWeight.bold,
      ), 
      child: Column(
        children: [
          Text("Hello",style: TextStyle(
            fontSize: 120,
            color: Colors.yellow,
            fontFamily: "微软雅黑",
            fontWeight: FontWeight.w100,
          ),),
          Text("My"),
          Text("Example"),
        ],
      ),
    );
  }
}