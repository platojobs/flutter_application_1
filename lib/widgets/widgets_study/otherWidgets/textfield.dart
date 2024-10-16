
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  MyTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: usernameController,
            textAlign: TextAlign.left,
            decoration: const InputDecoration(
              hintText: "请输入内容",
              labelText: "账户:",
              icon: Icon(Icons.people),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              debugPrint(value);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordController,
            textAlign: TextAlign.left,
            decoration: const InputDecoration(
              hintText: "请输入密码",
              labelText: "密码:",
              icon: Icon(Icons.lock),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              debugPrint("$value");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: TextButton(
              onPressed: () {
                debugPrint("点击了按钮");
                final username = usernameController.text;
                final password = passwordController.text;
                debugPrint("账号：$username 密码：$password");
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              child: const Text(
                "登录",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

