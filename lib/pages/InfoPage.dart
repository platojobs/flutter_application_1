import 'package:flutter/material.dart';

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
            text: "分类1",
            icon: Icon(Icons.import_contacts),
          ),
          Tab(
            text: "分类2",
            icon: Icon(Icons.info),
          ),
          Tab(
            text: "分类3",
            icon: Icon(Icons.cloud_outlined),
          ),
          Tab(
            text: "分类4",
            icon: Icon(Icons.pedal_bike),
          ),
          Tab(
            text: "分类5",
            icon: Icon(Icons.panorama_photosphere),
          ),
          Tab(
            text: "分类6",
            icon: Icon(Icons.on_device_training_outlined),
          ),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
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
