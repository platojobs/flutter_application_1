import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MWrapElements extends StatelessWidget {
  const MWrapElements({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Wrap(
        direction: Axis.horizontal, //主轴为水平
        spacing: 10, // 水平间距
        runSpacing: 50, //子组件纵轴的间距
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.center,
        verticalDirection: VerticalDirection.down, //从上往下摆放还是从下往上摆放
        children: [
          buildContainer(Colors.black),
          buildContainer(Colors.red),
          buildContainer(Colors.blue),
          buildContainer(Colors.green),
          buildContainer(Colors.amber),
          buildContainer(Colors.orange),
          buildContainer(Colors.pink),
        ],
      ),
    );
  }

  Container buildContainer(Color containColor) {
    return Container(
      width: 100,
      height: 100,
      color: containColor,
    );
  }
}
