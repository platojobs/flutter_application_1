
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("demo"),
      ),
      body: const HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeContentState();
  }
}

class HomeContentState extends State<HomeContent> {
  var check = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              value: check,
              fillColor: check ? const MaterialStatePropertyAll(Colors.blue): const MaterialStatePropertyAll(Colors.white),
              onChanged: (value) {
                setState(() {
                  check = value!;
                });
              }),
          const Text("租售协议", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
