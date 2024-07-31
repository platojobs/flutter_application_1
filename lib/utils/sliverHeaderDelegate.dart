
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef SliverHeaderBuilder = Widget Function(BuildContext context,
    double shrinkOffset,bool overlapsConten);

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
      final double maxHeight;
      final double minHeight;
      final SliverHeaderBuilder builder;

      SliverHeaderDelegate({
        required this.maxHeight,this.minHeight=0,required Widget child,
        }):builder = ((a,b,c) => child),assert(minHeight <= maxHeight&&minHeight >=0);

      SliverHeaderDelegate.fixedHeight({
        required double height,
        required Widget child,}):builder = ((a,b,c) => child),maxHeight = height,minHeight = height;

      SliverHeaderDelegate.builder(
      {required this.maxHeight,this.minHeight = 0,required this.builder});



  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    Widget child = builder(context,shrinkOffset,overlapsContent);
    assert( (){
      if(child.key !=null){
        print("${child.key}: shrink: $shrinkOffset,overlaps:$overlapsContent");}
      return true;
      }());
    return SizedBox.expand(child: child,);

  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => maxHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
  }}

