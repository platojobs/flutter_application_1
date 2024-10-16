import 'package:flutter/material.dart';
import 'dart:math';

class CarouselViewDemo extends StatefulWidget {
  const CarouselViewDemo({super.key});

  @override
  State<CarouselViewDemo> createState() => _CarouselViewDemoState();
}

class _CarouselViewDemoState extends State<CarouselViewDemo> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CarouselView"),
      ),
      body: SizedBox(
        height: 100,
        child: CarouselView(
            backgroundColor: Color.fromRGBO(Random().nextInt(155),
                Random().nextInt(100), Random().nextInt(220), 1.0),
            itemExtent: 100,
            shrinkExtent: 100,
            controller: _controller,
            children: [
              Center(child: Text("item0",style: TextStyle(color: Colors.white),)),
              Center(child: Text("item1",style: TextStyle(color: Colors.white))),
              Center(child: Text("item2",style: TextStyle(color: Colors.white))),
              Center(child: Text("item3",style: TextStyle(color: Colors.white))),
              Center(child: Text("item4",style: TextStyle(color: Colors.white))),
            ]),
      ),
    );
  }
}
