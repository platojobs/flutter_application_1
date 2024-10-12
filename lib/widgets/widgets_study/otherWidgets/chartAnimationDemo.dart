import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

class ChartAnimationDemo extends StatefulWidget {
  const ChartAnimationDemo({super.key});

  @override
  State<ChartAnimationDemo> createState() => _ChartAnimationDemoState();
}

class _ChartAnimationDemoState extends State<ChartAnimationDemo> {

  var height = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图标动画"),
      ),
      body: Center(
        child: Container(
          height: 400,
          alignment: AlignmentDirectional.bottomStart,
          child: InkWell(
            onTap: (){
              setState(() {
                height = 320;
              });
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: 40.0,
                  height: height - 40,
                  color: Colors.greenAccent,
                ),
                AnimatedContainer(
                    duration:const Duration(seconds:2),
                    margin: const EdgeInsets.only(left: 10),
                   width: 40.0,
                  height: height -10,
                  color: Colors.yellow,
                ),
                AnimatedContainer(
                  duration:const Duration(seconds:3),
                  margin: const EdgeInsets.only(left: 10),
                  width: 40.0,
                  height: height -60,
                  color: Colors.red,
                ),
                AnimatedContainer(
                  duration:const Duration(seconds:2),
                  margin: const EdgeInsets.only(left: 10),
                  width: 40.0,
                  height: height -50,
                  color: Colors.blue,
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
