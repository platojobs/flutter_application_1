import 'dart:math';

import 'package:flutter/material.dart';


class MutilList extends StatefulWidget {
  const MutilList({super.key});

  @override
  State<MutilList> createState() => _MutilListState();
}

class _MutilListState extends State<MutilList> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list")),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(color: Colors.blue, height: 200, width: .infinity),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
    SliverPersistentHeader(
    pinned: true, //是否固定在顶部
    floating: true,
    delegate: _SliverAppBarDelegate(
    minHeight: 50, //收起的高度
    maxHeight: 50, //展开的最大高度
    child: Container(
      color: Colors.blue,
      height: 50,
      width: .infinity,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            GestureDetector(
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  "大类别$index",
                  style: TextStyle(
                    color: index == selectedindex
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  selectedindex = index;
                });
              },
            ),
        itemCount: 15,
        itemExtent: 100,
        scrollDirection: .horizontal,
      ),
    ),
    ),
    ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverPersistentHeader(
            pinned: true, //是否固定在顶部
            floating: true,
            delegate: _SliverAppBarDelegate(
              minHeight: 50, //收起的高度
              maxHeight: 50, //展开的最大高度
              child: Container(
                color: Colors.blue,
                height: 50,
                width: .infinity,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                        child: Container(
                          color: Colors.red,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "二大类别$index",
                            style: TextStyle(
                              color: index == selectedindex
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedindex = index;
                          });
                        },
                      ),
                  itemCount: 15,
                  itemExtent: 100,
                  scrollDirection: .horizontal,
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.blue,
              height: 50,
              width: .infinity,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                      child: Container(
                        color: Colors.red,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "二类别$index",
                          style: TextStyle(
                            color: index == selectedindex
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          selectedindex = index;
                        });
                      },
                    ),
                itemCount: 15,
                itemExtent: 100,
                scrollDirection: .horizontal,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Container(
              height: 150,
              width: .infinity,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Flexible(flex: 1, child: Container(color: Colors.red)),
                  SizedBox(width: 10, height: 150),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.indigo,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverList.builder(
            itemCount: 30,
            itemBuilder: (context, index) => ListTile(
              leading: Text(
                "$index"
                "hello",
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
     required this.minHeight,
     required this.maxHeight,
     required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
