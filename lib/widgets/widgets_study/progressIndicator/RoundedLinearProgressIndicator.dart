
import 'package:flutter/material.dart';
//自定义进度视图
class RoundedLinearProgressIndicator extends StatelessWidget {
  final double value;
  final Color backgroundColor;
  final Color valueColor;
  final double height;
  final double borderRadius;

  const RoundedLinearProgressIndicator({
    super.key,
    required this.value,
    this.backgroundColor = Colors.grey,
    this.valueColor = Colors.blue,
    this.height = 10.0,
    this.borderRadius = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        FractionallySizedBox(
          widthFactor: value,
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: valueColor,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
      ],
    );
  }
}
