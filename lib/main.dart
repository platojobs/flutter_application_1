import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      // home: MyTextField(),
      home: PTestWidget(),
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
              print(value);
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
              print("$value");
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
                print("点击了按钮");
                final username = usernameController.text;
                final password = passwordController.text;
                print("账号：$username 密码：$password");
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

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        verticalDirection: VerticalDirection.down,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80,
            height: 60,
            color: Colors.red,
            child: const Text("hello",style: TextStyle(fontSize: 20),),
          ),
          Container(
            width: 120,
            height: 100,
            color: Colors.orange,
            child: const Text("abd",style: TextStyle(fontSize: 30),),
          ),
          Container(
            width: 90,
            height: 60,
            color: Colors.blue,
            child: const Text("world",style: TextStyle(fontSize: 13),),
          ),
          Container(
            width: 50, 
            height: 120,
            color: Colors.purple,
            child: const Text("Jobs",style: TextStyle(fontSize: 40),),
          
          ),
        ],
      ),
    );
  }
}






class PTestWidget extends StatelessWidget {
  const PTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PTestWidget"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic,
        children: [
          Expanded(child: Container(
            width: 180,
            height: 60,
            color: Colors.red,
          
          ),),
           Container(
            width: 120,
            height: 100,
            color: Colors.orange,
            
          ),
          

          Container(
            width: 90,
            height: 60,
            color: Colors.blue,
            
          ),
          Container(
            width: 50, 
            height: 120,
            color: Colors.purple,
            
          
          ),
        ],
      ),
    );
  }
}
