import 'package:flutter/material.dart';
import 'package:flutter_application_1/secondRoute.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.blue,
        
      ),
      body: Center(
        child: ElevatedButton(
           
            onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SecondPage();
              }));
            },
            child: const Text("button1")),
      ),
    );
  }
}