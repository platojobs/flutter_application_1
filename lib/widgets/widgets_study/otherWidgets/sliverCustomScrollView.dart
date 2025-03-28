import 'package:flutter/material.dart';

class TCustomScrollView extends StatelessWidget {
  const TCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      cacheExtent: 10,
      slivers: [
        const SliverToBoxAdapter(
          child: Card(
            child: Text("头部标题"),
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Text(index.toString()),
            );
          },
          itemCount: 28,
          findChildIndexCallback: (key) {
            debugPrint(key.toString());
            return key.hashCode;
          },
        ),
        const SliverToBoxAdapter(
          child: Card(
            child: Text("尾部标题"),
          ),
        ),
      ],
    );
  }
}
