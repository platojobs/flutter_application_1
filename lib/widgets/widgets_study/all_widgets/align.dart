import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  const AlignDemo({super.key});

  @override
  State<AlignDemo> createState() => _AlignDemoState();
}

class _AlignDemoState extends State<AlignDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: double.infinity,
          color: Colors.blueAccent,
          child: const Align(
            alignment: Alignment.center,
            child: FlutterLogo(
              textColor: Colors.black,
              size: 60,
              style: FlutterLogoStyle.stacked,
            ),
          ),
        ),
      ),
    );
  }
}
