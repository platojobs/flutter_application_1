import 'package:flutter/material.dart';

class RefreshS extends StatefulWidget {
  const RefreshS({super.key});

  @override
  State<RefreshS> createState() => _RefreshSState();
}

class _RefreshSState extends State<RefreshS> {
  var items = ["12","23","3","5"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("刷新控件"),
      ),
      body: RefreshIndicator(
        onRefresh: ()async{
          setState(() {
            items.add("19888");
          });
        },
        child: ListView.builder(
            itemExtent: 30,
            itemCount: items.length,
            itemBuilder: (context,index){
          return ListTile(title: Text("$index"+ "hhaha" + items[index]));
        }),

      ),
    );
  }
}
