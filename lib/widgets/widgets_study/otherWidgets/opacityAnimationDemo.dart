import 'package:flutter/material.dart';

class OpacityAnimationDemo extends StatefulWidget {
  const OpacityAnimationDemo({super.key});

  @override
  State<OpacityAnimationDemo> createState() => _OpacityAnimationDemoState();
}

class _OpacityAnimationDemoState extends State<OpacityAnimationDemo> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("淡入淡出动画"),
      ),
      body: Center(
        child: AnimatedOpacity(
            opacity: _visible? 1.0 : 0.0,
            duration: const Duration(milliseconds: 1000),
           child: Container(
             width: 300.0,
             height: 300.0,
             color: Colors.deepPurple,
           ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: _visible?"隐藏":"显示",
          child:const  Icon(Icons.flip),
          onPressed: (){
        setState(() {
          _visible = !_visible;
        });
      }),
    );
  }
}
