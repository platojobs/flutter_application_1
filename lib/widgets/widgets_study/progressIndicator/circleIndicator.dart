import 'package:flutter/material.dart';

import 'DownLoadWT.dart';
import 'ProgressIndicator.dart';
import 'RoundedLinearProgressIndicator.dart';

class CircleIndicatorDemo extends StatefulWidget {
  const CircleIndicatorDemo({super.key});

  @override
  State<CircleIndicatorDemo> createState() => _CircleIndicatorDemoState();
}

class _CircleIndicatorDemoState extends State<CircleIndicatorDemo> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _colorTween;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(vsync: this,duration:const Duration(milliseconds: 2000));
    _colorTween = _animationController.drive(ColorTween(
        begin: Colors.yellow,
        end: Colors.blue));
    _animationController..addListener((){
      setState(() {

      });
    })..repeat();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("进度指示器"),),
      body:  Center(
        child: Column(
          children: [
           const ProgressIndicatorDemo(),
           const Padding(padding:  EdgeInsets.all(15),
              child: RoundedLinearProgressIndicator(value: 0.5,height: 5,),
            ),
           const DownLoadWT(downloadProgress: 0.3 ,downloadSpeed: 100 + 0.4*100,),
            SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                value:_animationController.value,
                strokeWidth: 15,
                valueColor: _colorTween,
                strokeCap: StrokeCap.round,
              ),
            )
          ],
        ),
      ),
    );
  }
}

