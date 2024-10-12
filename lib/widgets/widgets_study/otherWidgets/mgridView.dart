import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MGridView extends StatelessWidget {
  const MGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,    //列数
      mainAxisSpacing: 15,  //垂直距离
      crossAxisSpacing: 15, //水平间距
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
      children: List.generate(20, (index) {
        return Container(
          height: 100,
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Text(
            "Item==index($index)",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        );
      }),
    );
  }
}
