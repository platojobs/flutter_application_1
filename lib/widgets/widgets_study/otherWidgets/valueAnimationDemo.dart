import 'package:flutter/material.dart';

class ValueAnimationDemo extends StatefulWidget {
  const ValueAnimationDemo({super.key});

  @override
  State<ValueAnimationDemo> createState() => _ValueAnimationDemoState();
}

class _ValueAnimationDemoState extends State<ValueAnimationDemo>with TickerProviderStateMixin {

  AnimationController? _controller;
  Animation? _animation;
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(milliseconds: 10000));
    final _curve = CurvedAnimation(parent: _controller!, curve: Curves.easeOut);
    _animation = IntTween(begin: 0,end: 100).animate(_curve)
                 ..addStatusListener((status){
                   if(status == AnimationStatus.completed){
                     //_controller?.reverse();
                   }
                   if(status == AnimationStatus.dismissed){
                     debugPrint("数字动画结束了");
                   }
                 });

  }



  @override
  Widget build(BuildContext context) {
    _controller?.forward();
    return AnimatedBuilder(animation: _controller!, builder: _builder);
  }
  
  Widget _builder(BuildContext context,Widget? child){
     return Scaffold(
       appBar: AppBar(
         title: const Text("数字变化动画"),
       ),
       body: Center(
         child: ClipRRect(
             borderRadius: BorderRadius.circular(30),
             child: Container(
               width: 60,
               height: 60,
               alignment: Alignment.center,
               color: Colors.red,
               child: Text(
                   _animation!.value.toString(),
                   style: const TextStyle(fontSize: 30,color: Colors.white),
             )
          ),
        ),
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
