
import 'package:flutter/material.dart';

import 'all_widgets.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  //tabbar的使用
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
            tabAlignment: TabAlignment.start,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black,
            controller: _tabController,
            indicatorColor: Colors.green,
            isScrollable: true,
            tabs: const [
              Tab(
                text: "组件",
                icon: Icon(Icons.filter_1),
              ),
              Tab(
                text: "分类2",
                icon: Icon(Icons.filter_2),
              ),
              Tab(
                text: "分类3",
                icon: Icon(Icons.filter_3),
              ),
              Tab(
                text: "分类4",
                icon: Icon(Icons.filter_4),
              ),
              Tab(
                text: "分类5",
                icon: Icon(Icons.filter_5),
              ),
              Tab(
                text: "分类6",
                icon: Icon(Icons.filter_6),
              ),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          AllWidgetsDemo(),
          Center(
            child: Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Card(
                  //shape:OutlineInputBorder(),

                  child: Text("Card"),
          )
              ),
            ),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}
