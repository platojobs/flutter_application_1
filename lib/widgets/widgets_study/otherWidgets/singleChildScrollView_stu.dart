

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MMSingleChildScrollView extends StatelessWidget {
  const MMSingleChildScrollView({super.key});
  final _characstrs  = "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ";
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Scrollbar(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(80),
        child: Center(
          child: Column(
            children: _characstrs.split("").map((element){
              return Text(element,style: const TextStyle(color: Colors.blue,fontFamily: "momo"),);
            }).toList(),
          ),
        ),
      ),
    ),
  );

}
