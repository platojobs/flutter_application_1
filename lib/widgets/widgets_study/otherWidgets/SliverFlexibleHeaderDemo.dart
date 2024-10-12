
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//下拉放大的列表
typedef SliverFlexibleHeaderBuilder = Widget Function(
    BuildContext context, double maxExtent,
    ScrollDirection direction
    );

class MMSliverFlexibleHeader extends StatelessWidget {
  const MMSliverFlexibleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverFlexibleHeader(
          visibleExtent: 200,
          builder: (context, availableHeight,direction) =>
              GestureDetector(
                child: Image(
                    image: AssetImage("assets/test.jpeg"),
                    width: 50,
                    height: availableHeight,
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.cover
                ),
                onTap: () {
                  print("object");
                },
              ),
        ),
        buildFixedList(),
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
}

class SliverFlexibleHeader extends StatelessWidget {
  const SliverFlexibleHeader({super.key, required this.builder, this.visibleExtent = 0});

  final SliverFlexibleHeaderBuilder builder;
  final double visibleExtent;

  @override
  Widget build(BuildContext context) {
    return _SliverFlexibleHeader(
        visibleExtent: visibleExtent,
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constt){
              return builder(context,constt.maxHeight,(constt as ExtraInfoBoxConstraints<ScrollDirection>).extra);
         },)
         );
  }
}

class _SliverFlexibleHeader extends SingleChildRenderObjectWidget {
  const _SliverFlexibleHeader(
      {Key? key, this.visibleExtent = 0, required Widget child})
      :super(key: key, child: child);
  final double visibleExtent;

  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    return _FlexibleHeaderRenderSliver(visibleExtent);
  }

  @override
  void updateRenderObject(BuildContext context, _FlexibleHeaderRenderSliver renderObject) {
    // TODO: implement updateRenderObject
    renderObject..visibleExtent = visibleExtent;
  }

}

class _FlexibleHeaderRenderSliver extends RenderSliverSingleBoxAdapter {
    double _lastOverScroll = 0;
    double _lastScrollOffset = 0;
    ScrollDirection _direction = ScrollDirection.idle ;
    double? _scrollOffsetCorrection;
    bool  _reported = false;

   late  double _visibleExtent = 0;

    _FlexibleHeaderRenderSliver(double visibleExtent): _visibleExtent = visibleExtent;

    set visibleExtent(double value){
      if (_visibleExtent != value){
        _lastOverScroll =0;
        _reported = false;
        _scrollOffsetCorrection = value - _visibleExtent;
        _visibleExtent = value;
        markNeedsLayout();
      }
    }

    @override
  void performLayout() {
    if(_scrollOffsetCorrection!=null){
      geometry = SliverGeometry(scrollOffsetCorrection: _scrollOffsetCorrection);
      _scrollOffsetCorrection = null;
      return;
    }

    if (child == null) {
      geometry = SliverGeometry(scrollExtent: _visibleExtent);
      return;
    }

    //当已经完全滑出屏幕时
    if (constraints.scrollOffset > _visibleExtent) {
      geometry = SliverGeometry(scrollExtent: _visibleExtent);
      // 通知 child 重新布局，注意，通知一次即可，如果不通知，滑出屏幕后，child 在最后
      // 一次构建时拿到的可用高度可能不为 0。因为使用者在构建子节点的时候，可能会依赖
      // "当前的可用高度是否为0" 来做一些特殊处理，比如记录是否子节点已经离开了屏幕，
      // 因此，我们需要在离开屏幕时确保LayoutBuilder的builder会被调用一次（构建子组件）。
      if (!_reported) {
        _reported = true;
        child!.layout(
          ExtraInfoBoxConstraints(
            _direction, //传递滑动方向
            constraints.asBoxConstraints(maxExtent: 0),
          ),
          //我们不会使用自节点的 Size, 关于此参数更详细的内容见本书后面关于layout原理的介绍
          parentUsesSize: false,
        );
      }
      return;
    }

    _reported = false;

    double overscroll = constraints.overlap<0 ? constraints.overlap.abs() :0;
    var scrollOffset = constraints.scrollOffset;
    _direction = ScrollDirection.idle;

    double paintExtent = _visibleExtent + overscroll - constraints.scrollOffset;
    paintExtent = min(paintExtent, constraints.remainingPaintExtent);

    var distance = overscroll >0 ? overscroll-_lastOverScroll:_lastScrollOffset-scrollOffset;
    _lastOverScroll = overscroll;
    _lastScrollOffset = scrollOffset;

    if(constraints.userScrollDirection == ScrollDirection.idle){
      _direction = ScrollDirection.idle;
      _lastOverScroll =0;
    }else if(distance>0){
      _direction =ScrollDirection.forward;
    }else if(distance<0){
      _direction =ScrollDirection.reverse;
    }
    child!.layout(
     // constraints.asBoxConstraints(maxExtent: paintExtent),
       ExtraInfoBoxConstraints(
          _direction,
          constraints.asBoxConstraints(maxExtent:paintExtent )
        ),
      parentUsesSize: false
    );
    double layoutExtent = min(_visibleExtent, paintExtent);
    geometry = SliverGeometry(
      scrollExtent: layoutExtent,
      paintOrigin: -overscroll,
      paintExtent:  paintExtent,
      maxPaintExtent: paintExtent,
      layoutExtent: layoutExtent
    );

  }

}


class ExtraInfoBoxConstraints<T>extends BoxConstraints {
    final T extra;
    ExtraInfoBoxConstraints(this.extra,BoxConstraints constraints): super(
        minHeight: constraints.minHeight,
        minWidth: constraints.minWidth,
        maxHeight: constraints.maxHeight,
        maxWidth: constraints.maxWidth
    );

    @override
  bool operator ==(Object other) {
    // TODO: implement ==
    if(identical(this, other)) return true;
    return other is ExtraInfoBoxConstraints && super == other && other.extra == extra;
  }

  @override
  get hashCode => Object.hash(super.hashCode, extra);

}

