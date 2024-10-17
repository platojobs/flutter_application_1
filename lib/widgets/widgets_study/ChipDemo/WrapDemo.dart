import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  const WrapDemo({super.key});

  @override
  State<WrapDemo> createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WrapDemo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text(
                    'AH',
                    style: TextStyle(fontSize: 12,color: Colors.white),
                  )),
              label: const Text('Hamilton'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text(
                    'ML',
                    style: TextStyle(fontSize: 12,color: Colors.white),
                  )),
              label: const Text('Lafayette'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text(
                    'HM',
                    style: TextStyle(fontSize: 12,color: Colors.white),
                  )),
              label: const Text('Mulligan'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text(
                    'JL',
                    style: TextStyle(fontSize: 12,color: Colors.white),
                  )),
              label: const Text('Laurens'),
            ),
          ],
        ),
      ),
    );
  }
}
