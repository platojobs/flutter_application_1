import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SliderDemo"),
      ),
      body: Center(
        child: Slider(
            max: 100,
            divisions: 10,
            value: value,
            label: value.round().toString(),
            onChanged: (svalue) {
              setState(() {
                value = svalue;
              });
            }),
      ),
    );
  }
}
