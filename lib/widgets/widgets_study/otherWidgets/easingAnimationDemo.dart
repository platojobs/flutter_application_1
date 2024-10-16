import 'package:flutter/material.dart';

class EasingAnimationDemo extends StatefulWidget {
  const EasingAnimationDemo({super.key});

  @override
  State<EasingAnimationDemo> createState() => _EasingAnimationDemoState();
}

class _EasingAnimationDemoState extends State<EasingAnimationDemo> with TickerProviderStateMixin{
    AnimationController? _controller;
    Animation? _animation;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(milliseconds: 2000));
    _animation = Tween(begin: -1.0,end: 0.0).animate(CurvedAnimation(parent: _controller!, curve: Curves.fastOutSlowIn))
      ..addStatusListener(_handler);
  }

  void _handler(status){
    if (status == AnimationStatus.completed){
      _animation!.removeStatusListener(_handler);
      _controller!.reset();
      _animation = Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: _controller!, curve: Curves.fastOutSlowIn))
                   ..addStatusListener((status){
                     if (status == AnimationStatus.completed){
                       //Navigator.pop(context);
                       debugPrint("动画结束了");
                     }
                   });
      _controller?.forward();
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    _controller?.forward();
    return Scaffold(
      appBar: AppBar(
        title: Text("缓动动画"),
      ),
      body: AnimatedBuilder(animation: _controller!, builder: (context,child){
        return Transform(transform: Matrix4.translationValues(_animation?.value*width, 0.0, 0.0),
          child: Center(
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.blue,
            ),
          ),
        );
       },
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller?.dispose();
    super.dispose();
  }


}
