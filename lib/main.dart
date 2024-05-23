import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottomNavigationWidget.dart';
import 'package:flutter_application_1/switchAndCheckBoxTestRoute.dart';
import 'package:flutter_application_1/firstRoute.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home:  const FirstPage(),

      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Flutter Demo Home Page'),
      //   ),
      //   body: const SwitchAndCheckBoxTestRoute(),
      // ),
    );
  }
}

class DefaultTextWidget extends StatelessWidget {
  const DefaultTextWidget({super.key});
  final imageurl =
      "https://img2.baidu.com/it/u=3227619927,365499885&fm=253&fmt=auto&app=120&f=JPEG?w=938&h=500";
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const  Text("data", style: TextStyle(color: Colors.red)),
        ClipOval(
           child: Image.network(
          imageurl,
          fit: BoxFit.cover,
          width: 150,
          height: 150,
        )),
        //圆角图片
        ClipRRect(
           borderRadius: BorderRadius.circular(50),
           child: Image.network(
          imageurl,
          fit: BoxFit.cover,
          width: 150,
          height: 150,
        ),
        ),
        Container(
          width: 150,
          height: 150,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75)
          ),
          child: Image.network(imageurl,fit: BoxFit.cover,),

        ),
      ],
    );
  }
}

