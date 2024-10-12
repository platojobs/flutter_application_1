import 'package:flutter/material.dart';

class ProgressIndicatorDemo extends StatefulWidget {
  const ProgressIndicatorDemo({super.key});

  @override
  State<ProgressIndicatorDemo> createState() => _ProgressIndicatorDemoState();
}

class _ProgressIndicatorDemoState extends State<ProgressIndicatorDemo> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState

    controller = AnimationController(
        vsync: this,
        duration:const  Duration(seconds: 1),
    )..addListener((){
      setState(() {
      });
    })..forward();

   // controller.repeat(period: const Duration(seconds: 1));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  const EdgeInsets.all(15),
       child: LinearProgressIndicator(
         value: controller.value,
         backgroundColor: Colors.black12,
         color: Colors.blue,
       ),
    );
  }
}

