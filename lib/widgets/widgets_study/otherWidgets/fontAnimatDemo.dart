import 'package:flutter/material.dart';

class Fontanimatdemo extends StatefulWidget {
  const Fontanimatdemo({super.key});

  @override
  State<Fontanimatdemo> createState() => _FontanimatdemoState();
}

class _FontanimatdemoState extends State<Fontanimatdemo> with SingleTickerProviderStateMixin {

 late final Animation<double> tween;
 late final AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(duration:const Duration(milliseconds: 2000 ),vsync: this);
    tween = Tween(begin: 0.0,end: 1.0)
            .animate(controller)
            ..addListener((){
               setState(() {
                 print(tween.value);
               });
            });
    controller.forward();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("字体放大动画"),),
      body: GestureDetector(
         onTap: (){
            startAnimation();
         },
        child: Center(
          child: Text(
              "字体放大",
            style: TextStyle(fontSize: 60*controller.value),
          ),

        ),
      ),
    );

  }

  void startAnimation(){
     setState(() {
       controller.forward(from: 0.0);
     });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

}
