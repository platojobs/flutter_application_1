import 'package:flutter/material.dart';
//import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/home_content.dart';
import 'package:flutter_application_1/home_body.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const HomePage(title: '学习监听listview'),
      //home: HomeBody(),
      // home: Home(),
      home: const MyTextField(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello"),
      ),
      body: const Text.rich(TextSpan(children: [
        WidgetSpan(
            child: Icon(
          Icons.face,
          color: Colors.blue,
        )),
        TextSpan(
            text: "hello",
            style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold)),
        TextSpan(
            text: "Plato", style: TextStyle(color: Colors.red, fontSize: 25)),
        TextSpan(
            text: "Jobs", style: TextStyle(color: Colors.orange, fontSize: 38)),
      ])),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            textAlign: TextAlign.left,
            decoration: const InputDecoration(
              hintText: "请输入内容",
              labelText: "账户:",
              icon: Icon(Icons.people),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              print(value);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            textAlign: TextAlign.left,
            decoration: const InputDecoration(
              hintText: "请输入密码",
              labelText: "密码:",
              icon: Icon(Icons.lock),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              print("$value");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                print("点击了按钮");
              },
              child: const Text("登录",style: TextStyle(fontSize: 20,color: Colors.blue),)),
        ],
      ),
    );
  }
}

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello"),
      ),
      body: const Icon(
        Icons.pets,
        size: 100,
      ),
    );
  }
}
