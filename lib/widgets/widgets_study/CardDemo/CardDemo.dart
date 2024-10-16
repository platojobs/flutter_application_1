import 'package:flutter/material.dart';
class Carddemo extends StatefulWidget {
  const Carddemo({super.key});

  @override
  State<Carddemo> createState() => _CarddemoState();
}

class _CarddemoState extends State<Carddemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 90,
                width: 150,
                child: Card(
                  child: Center(child: Text("Card")),
                )),
            SizedBox(
                height: 90,
                width: 150,
                child: Card.filled(
                  child: Center(child: Text("Card.filled")),
                )),
            SizedBox(
                height: 90,
                width: 150,
                child: Card.outlined(
                  child: Center(child: Text("Card.outlined")),
                )),

          ],
        ),
      ),
    );
  }
}
