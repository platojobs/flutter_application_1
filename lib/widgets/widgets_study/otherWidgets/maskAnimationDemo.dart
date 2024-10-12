import 'package:flutter/material.dart';

class MaskAnimationDemo extends StatefulWidget {
  const MaskAnimationDemo({super.key});

  @override
  State<MaskAnimationDemo> createState() => _MaskAnimationDemoState();
}

class _MaskAnimationDemoState extends State<MaskAnimationDemo>with TickerProviderStateMixin {

  AnimationController? _controller;
  Animation<double?>? _transitionTween;
  Animation<BorderRadius?>? _borderRadiusTween;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this,duration:const Duration(seconds: 2))
        ..addStatusListener((status){
          if (status == AnimationStatus.completed){
            print("遮罩动画结束了");
          }
        });
    _transitionTween = Tween(begin: 50.0,end: 200.0).animate(
        CurvedAnimation(parent: _controller!, curve: Curves.ease),
    );
    _borderRadiusTween = BorderRadiusTween(
      begin: BorderRadius.circular(75),
      end: BorderRadius.circular(0.0),
    ).animate(
      CurvedAnimation(parent: _controller!, curve: Curves.ease),
    );
     _controller?.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller!,
        builder: _builder);
  }

  Widget _builder(BuildContext context, Widget? child){
      return Scaffold(
         appBar: AppBar(
           title:const Text("遮罩动画"),
         ),
        body: Center(
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.black12,
                ),
              ),
              Center(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width:_transitionTween?.value ,
                  height: _transitionTween?.value,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: _borderRadiusTween?.value
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }



}
