import 'package:flutter/material.dart';

class ProgressRoute extends StatefulWidget {
  const ProgressRoute({super.key});

  @override
  _ProgressRouteState createState() => _ProgressRouteState();
}

class _ProgressRouteState extends State<ProgressRoute>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 13));
    _controller.forward();
    _controller.addListener(() { setState(() {}); });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(padding: EdgeInsets.all(10),
        child: SizedBox(
          height: 20,
          child: LinearProgressIndicator(backgroundColor: Colors.grey,
        valueColor: ColorTween(begin: Colors.grey,end: Colors.red
        ).animate(_controller),
        value: _controller.value,
        ),
        )
        )
      ],),
    );
  }
}
