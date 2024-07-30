
import 'package:flutter/material.dart';



class MMCustomScrollView extends StatelessWidget {
  const MMCustomScrollView({super.key});

  
  //CustomScrollView 的主要功能是提供一个公共的 Scrollable 和 Viewport，来组合多个 Sliver，
  
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
       // buildOneListView(),// sliver
       // buildOneListView(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 200,
            child:  PageView(
              children: [
                Container(
                  color: Colors.red,
                  child: const Text("data1",style: TextStyle(color: Colors.white),),
                ),
                Container(
                  color: Colors.blue,
                  child: const Text("2",textScaler: TextScaler.linear(5),),
                )
              ],
            ),
          ),
        ),
        buildOneListView(),
      ],
    );
  }
  
  
  Widget buildListView(){
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (_ ,index)=> ListTile(title: Text("$index"),));
  }

  Widget buildOneListView(){
    return SliverFixedExtentList(
        delegate: SliverChildBuilderDelegate((_,index)=>ListTile(title: Text("$index"),),
          childCount: 20,
        ),
        itemExtent: 50,
    );
  }
  
}
