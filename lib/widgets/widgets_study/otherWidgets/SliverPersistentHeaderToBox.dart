


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'SliverFlexibleHeaderDemo.dart';


typedef SliverPersistentHeaderToBoxBuilder = Widget Function(
     BuildContext context, double maxExtent, bool fixed
    );

class SliverPersistentHeaderToBox extends StatelessWidget {
   SliverPersistentHeaderToBox({super.key ,required Widget child}):builder = ((a,b,c) => child);

   const SliverPersistentHeaderToBox.builder({super.key,required this.builder,});


  final SliverPersistentHeaderToBoxBuilder builder;

  @override
  Widget build(BuildContext context) {
    return _SliverPersistentHeaderToBox(
      // 通过 LayoutBuilder接收 Sliver 传递给子组件的布局约束信息
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return builder(
            context,
            constraints.maxHeight,
            //约束中需要传递的额外信息是一个bool类型，表示 Sliver 是否已经固定到顶部
            (constraints as ExtraInfoBoxConstraints<bool>).extra,
          );
        },
      ),
    );
  }
  
}



class _SliverPersistentHeaderToBox extends SingleChildRenderObjectWidget {
  const _SliverPersistentHeaderToBox(
      {Key? key, required Widget child})
      :super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    return _RenderSliverPersistentHeaderToBox();
  }

}


class _RenderSliverPersistentHeaderToBox extends RenderSliverSingleBoxAdapter{

  @override
  void performLayout() {
    if(child == null){
      geometry = SliverGeometry.zero;
      return;
    }
    child!.layout(
        ExtraInfoBoxConstraints(
          constraints.scrollOffset != 0,
          constraints.asBoxConstraints(
            maxExtent: constraints.remainingPaintExtent,
          )
        ),
        parentUsesSize: true,
    );
    double childExtent;
    switch(constraints.axis){
      case Axis.horizontal:
        childExtent = child!.size.width;
        break;
      case Axis.vertical:
        childExtent = child!.size.height;
        break;
    }
    geometry = SliverGeometry(
      scrollExtent: childExtent,
      paintOrigin: 0, // 固定，如果不想固定应该传` - constraints.scrollOffset`
      paintExtent: childExtent,
      maxPaintExtent: childExtent,
    );

  }
   @override
  double childMainAxisPosition(covariant RenderBox child) {
    // TODO: implement childMainAxisPosition
    return 0.0;
  }

}


class SliverPersistentHeaderToBoxRoute extends StatelessWidget {
  const SliverPersistentHeaderToBoxRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        buildFixedList(5),
        SliverPersistentHeaderToBox.builder(builder: headerBuilder),
        buildFixedList(5),
        SliverPersistentHeaderToBox(child: wTitle('Title 2')),
        buildFixedList(50),
      ],
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

  // 当 header 固定后显示阴影
  Widget headerBuilder(context, maxExtent, fixed) {
    // 获取当前应用主题，关于主题相关内容将在后面章节介绍，现在
    // 我们要从主题中获取一些颜色。
    var theme = Theme.of(context);
    return Material(
      child: Container(
        color: fixed ? Colors.white : theme.canvasColor,
        child: wTitle('Title 1'),
      ),
      elevation: fixed ? 4 : 0,
      shadowColor: theme.appBarTheme.shadowColor,
    );
  }

  // 我们约定小写字母 w 开头的函数代表是需要构建一个 Widget，这比 buildXX 会更简洁
  Widget wTitle(String text) =>
      ListTile(title: Text(text), onTap: () => debugPrint(text));
}

