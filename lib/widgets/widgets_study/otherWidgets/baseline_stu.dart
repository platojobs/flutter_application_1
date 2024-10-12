import 'package:flutter/material.dart';

class BaseLineText extends StatelessWidget {
  const BaseLineText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Baseline(
            baseline: 80,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              "AaBbCc",
              style: TextStyle(
                fontSize: 18.0,
                textBaseline:  TextBaseline.alphabetic
              ),
            ),
        ),
        Baseline(
          baseline: 80,
          baselineType: TextBaseline.alphabetic,
          child: Container(
            width: 40,
            height: 40,
            color: Colors.green,
          )
        ),
       const Baseline(
          baseline: 80,
          baselineType: TextBaseline.alphabetic,
          child: Text(
            "DaEyGg",
            style: TextStyle(
                fontSize: 58.0,
                textBaseline:  TextBaseline.ideographic
            ),
          ),
        ),

      ],
    );
  }
}
