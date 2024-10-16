import 'package:flutter/material.dart';

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        textDirection: TextDirection.ltr,
        fit: StackFit.loose,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 10,
            color: Colors.green,
          ),
          Container(
            width: 10,
            height: 100,
            color: Colors.blue,
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  debugPrint("constraints: $constraints");
              return Container(width: 50, height: 50, color: Colors.yellow);
            }),
          ),
        ],
      ),
    );
  }
}

class MyAligenWidget extends StatelessWidget {
  const MyAligenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
       
       children: [

const Align(
  widthFactor: 2,
  heightFactor: 2,
  alignment: Alignment.center,
  child: FlutterLogo(
    size: 60,
  ),
),

 Container(
      width: 120,
      height: 120,
      color: Colors.red,
      child: const Align(
        alignment: Alignment.center,
        child: FlutterLogo(size: 60),
      ),
    )

       ],


    );

    
  }
}
