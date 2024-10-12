import 'package:flutter/material.dart';

class Sliver_customScrollView extends StatelessWidget {
  const Sliver_customScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
       const SliverAppBar(
          title: Text("Floating APP Bar"),
          floating: false,
          flexibleSpace: Placeholder(color: Colors.red,),
          expandedHeight: 20.0,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(title: Text("List Item $index")),
            childCount: 100,
          ))

      ],

    );
  }
}
