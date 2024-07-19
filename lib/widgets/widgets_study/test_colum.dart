
import 'package:flutter/material.dart';

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
            child: const Text(
              "hello",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            width: 120,
            height: 100,
            color: Colors.orange,
            child: const Text(
              "abd",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            width: 90,
            height: 60,
            color: Colors.blue,
            child: const Text(
              "world",
              style: TextStyle(fontSize: 13),
            ),
          ),
          Container(
            width: 50,
            height: 120,
            color: Colors.purple,
            child: const Text(
              "Jobs",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}

