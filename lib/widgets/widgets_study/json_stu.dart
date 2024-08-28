
import 'dart:convert';

import 'package:flutter/material.dart';

import '../../models/user.dart';

class JsonOperationTest extends StatefulWidget {
 const JsonOperationTest({super.key});

  @override
  State<JsonOperationTest> createState() => _JsonOperationTestState();
}

class _JsonOperationTestState extends State<JsonOperationTest> {
  var  user = User(name: "姓名--", age: 0, isVip: false);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          OutlinedButton(
              child:const Text("转化数据"),
          onPressed: (){
            String jsonstr = '{ "name":"zhangsan","age": 18,"isVip": true}';
            setState(() {
              user = User.fromJson(json.decode(jsonstr));
            });
          }),
          Text("${user.name}:${user.age}",style: const TextStyle(fontSize: 15),),
        ],
      ),
    );
  }
}
