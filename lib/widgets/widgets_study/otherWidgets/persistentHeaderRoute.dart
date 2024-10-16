
import 'package:flutter/material.dart';
import 'package:flutter_pprotapp/utils/sliverHeaderDelegate.dart';

class PersistentHeaderRoute extends StatelessWidget {
  const PersistentHeaderRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
         buildFixedList(),

         SliverPersistentHeader(
            pinned: true, 
             delegate: SliverHeaderDelegate(
               maxHeight: 100,
               minHeight: 50,
               child: buildHeader(1)
             )
         ),
        buildFixedList(5),
        SliverPersistentHeader(
            pinned: true,
            delegate: SliverHeaderDelegate.fixedHeight(
                height: 50,
                child: buildHeader(2)),
        ),
        buildFixedList(20),
        
      ],
    );
  }

  //构建固定高度的list
  Widget buildFixedList([int count = 10]) => SliverFixedExtentList(
      itemExtent: 45,
      delegate: SliverChildBuilderDelegate(
        buildItem,
        childCount: count
      ),
  );
  
  Widget buildItem(BuildContext context, int index) => ListTile(
    title: Text("标题：$index"),
  );
  
  Widget buildHeader(int i ) => Container(
    color: Colors.lightBlue.shade200,
    alignment: Alignment.centerLeft,
    child: Text("Header $i"),
  );
  
  

}
