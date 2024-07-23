import 'package:flutter/material.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/listView_stu.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   primarySwatch: Colors.blue,
      //   primaryColor: Colors.red,
      // ),
      // home:  const AppBarExample(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
        ),
        body: PJListBuilderView(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            autocorrect: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: InputBorder.none,
                hintText: 'Enter your email',
                labelText: '邮箱',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            autocorrect: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.security),
                border: InputBorder.none,
                hintText: 'Enter your password',
                labelText: '密码',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                )),
          ),
        ],
      ),
    );
  }
}
