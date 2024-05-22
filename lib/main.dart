
import 'package:flutter/material.dart';
import 'package:flutter_application_1/maxcrossTest.dart';
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
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home:  Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo"),
      ),
      body:  const maxcrossTest(),
      ),
    );
  }
}
