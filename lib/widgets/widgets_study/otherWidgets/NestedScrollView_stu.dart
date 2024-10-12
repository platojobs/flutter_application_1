
import 'package:flutter/material.dart';

class MMNestedScrollView extends StatelessWidget {
  const MMNestedScrollView({super.key});

  get headerSliverBuilder => (BuildContext context, bool innerBoxIsScrolled) {
    // 返回一个 Sliver 数组给外部可滚动组件。
    return <Widget>[
      SliverAppBar(
        title: const Text('嵌套ListView'),
        pinned: true, // 固定在顶部
        forceElevated: innerBoxIsScrolled,
      ),
      buildFixedList(5), //构建一个 sliverList
    ];
  };

  @override
  Widget build(BuildContext context) {
    return Material(
      child: NestedScrollView(
          headerSliverBuilder: headerSliverBuilder,
          body: ListView.builder(
            padding: const EdgeInsets.all(10),
              itemCount: 30,
              physics:const  ClampingScrollPhysics(),
              itemBuilder:(BuildContext context,int index)=> ListTile(title: Text("$index"),
              )
          )
      ),
    );
  }


    //构建固定高度的list
    Widget buildFixedList([int count = 20]) => SliverFixedExtentList(
      itemExtent: 45,
      delegate: SliverChildBuilderDelegate(
          buildItem,
          childCount: count
      ),
    );
    Widget buildItem(BuildContext context, int index) => ListTile(
      title: Text("标题：$index"),
    );

}