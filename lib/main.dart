
import 'package:flutter/material.dart';
import 'package:flutter_application_1/longListView.dart';

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
      home:  Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo"),
      ),
      body:  LongListViewWidget(items: List.generate(100, (index) => "单元格:$index")),
      ),
    );
  }
}
