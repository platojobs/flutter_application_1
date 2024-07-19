import 'package:flutter/material.dart';

class HorListViewWidget extends StatelessWidget {
  const HorListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.grey,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(width: 160,color: Colors.red),
          Container(width: 160,color: Colors.blue),
          Container(width: 160,color: Colors.green),
          Container(width: 160,color: Colors.yellow),
          Container(width: 160,color: Colors.orange),
          Container(width: 160,color: Colors.pink),
        ],
      ),
    );
  }
}
