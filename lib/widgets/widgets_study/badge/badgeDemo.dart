import 'dart:math';

import 'package:flutter/material.dart';

class BadgeDemo extends StatefulWidget {
  const BadgeDemo({super.key});

  @override
  State<BadgeDemo> createState() => _BadgeDemoState();
}

class _BadgeDemoState extends State<BadgeDemo> {
  double value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("角标"),
      ),
      body:Center(
        child: Column(
          children: [
            IconButton(onPressed: (){},
                icon: const Badge(
                  label: Text("你的角标0"),
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.surround_sound),
                ),
            ),
            IconButton(onPressed: (){},
              icon: const Badge(
                label: Text("改变进度1"),
                backgroundColor: Colors.red,
                child: Icon(Icons.person),
              ),
            ),
            IconButton(onPressed: (){
              debugPrint("object");
              setState(() {
                value = Random().nextInt(101)*0.01;
                debugPrint("$value");
              });

            },
                icon:  Badge.count(
                // alignment: const Alignment(1.0, -1.0),
                  count: 55,
                  textColor: Colors.white,
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.message),
                ),
            ),
            TextButton(onPressed: (){
             ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(
                 backgroundColor: Colors.blue,
                 content:const Text("删除"),
                 action: SnackBarAction(
                   label: "确认吗？",
                   textColor: Colors.red,
                   onPressed: (){
                     debugPrint("hello");
                   },
                 ),
               ),
             );
            }, child: const Text("召唤神龙")),
          ],
        ),
      ),
    );
  }
}
