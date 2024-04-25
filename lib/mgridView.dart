import 'package:flutter/material.dart';

class MGridView extends StatelessWidget {
  const MGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(20, (index) {
         return Center(
            child: Text(
              "Item==index($index)",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          );
        }),
        );
  }
}
