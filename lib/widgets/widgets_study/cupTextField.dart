
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupTextField extends StatelessWidget {
  
  final usernameController = TextEditingController(text: "姓名");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CupTextField"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          height: 75,
          padding: EdgeInsets.all(10),
          child: CupertinoTextField(
          controller: usernameController,
          placeholder: "请输入用户名",
          padding: const EdgeInsets.only(left: 10,right: 10),
          prefix: Text("用户名:"),// 输入框前缀图文
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
               // blurRadius: 10,
               // spreadRadius: 2,
               // offset: const Offset(5, 5),
              ),
            ],
          ),
        ),
        )
    );
  }
}
