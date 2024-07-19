
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;
 @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [
            ParallelWidget(),
            ScrollControllerWidget(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home),text: "视差",),
            Tab(icon: Icon(Icons.perm_identity),text: "Controller",)
          ],
          unselectedLabelColor: Colors.blueGrey,
          labelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.red,
        ),
      ),
    );
  }
}

class ScrollControllerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScrollControllerState();
}

class _ScrollControllerState extends State<ScrollControllerWidget> {
  ScrollController _controller = ScrollController();
  bool isTop = false;
  @override
  void initState() {
    _controller.addListener(() {
      if (_controller.offset > 1000) {
        setState(() {
          isTop = true;
        });
      } else if (_controller.offset < 300) {
        setState(() {
          isTop = false;
        });
      }
      
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ScrollController")),
      body: Column(
        children: [
          Container(
            height: 40,
            color: Colors.red,
            child: ElevatedButton(
              onPressed: (isTop
                  ? () {
                      if (isTop) {
                        _controller.animateTo(.0,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease); // 做一个滚动到顶部的动画
                      }
                    }
                  : null),
              child: Text("Top"),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              controller: _controller,
              itemBuilder: (context, index) => ListTile(title: Text("$index")),
            ),
          ),
        ],
      ),
    );
  }
}


class ParallelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(//SliverAppBar 作为头图控件
              title: Text('CustomScrollView Demo'),// 标题
              floating: true,// 设置悬浮样式
              flexibleSpace: Image.network("https://copyright.bdstatic.com/vcg/creative/cc9c744cf9f7c864889c563cbdeddce6.jpg@h_1280",fit:BoxFit.cover),// 设置悬浮头图背景
              expandedHeight: 280,// 头图控件高度
            ),
            SliverList(//SliverList 作为列表控件
              delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(title: Text('Item #$index')),// 列表项创建方法
                childCount: 100,// 列表元素个数
              ),
            ),
          ]);
  }

}
