

import 'package:flutter/material.dart';

import '../../utils/keepAliveWrapper.dart';

class TabbrViewSample extends StatefulWidget {
  const TabbrViewSample({super.key});

  @override
  State<TabbrViewSample> createState() => _TabbrViewSampleState();
}

class _TabbrViewSampleState extends State<TabbrViewSample> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  final _tabs = ["微信","通讯录","发现","我"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
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
        title: const Text("微信"),
        bottom: TabBar(
          controller: _tabController,
            tabs: _tabs.map( (element) => Tab(text: element)).toList(),
      ),
    ),
      body: TabBarView(
          controller: _tabController,
          children: _tabs.map( (element){
            return KeepAliveWrapper(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(element ),
                ),

            );
          }).toList(),
      ),
    );
}
}



class DefaultTabbarView extends StatelessWidget {
   DefaultTabbarView({super.key});
  final _tabs = ["微信","通讯录","发现","我"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: _tabs.length,
        child:const TabbrViewSample()
    );
  }
}
