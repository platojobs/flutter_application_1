import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';
class PJListView extends StatelessWidget {
   PJListView({super.key});
  final _names = ["shrinkWrap","padding","children","children_children","children_s"];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _names.map((element)=> Text(element,style:const  TextStyle(fontFamily: "momo",fontSize: 23,fontWeight: FontWeight.bold),)).toList(),
    );
  }
}


class PJListBuilderView extends StatelessWidget {
   PJListBuilderView({super.key});
  final _names = ["shrinkWrap","padding","children","children_children","children_s"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: _itemBuilder,
        itemCount: _names.length,
        itemExtent: 35,
    );
  }

  Widget _itemBuilder(BuildContext context,int index) =>  Text(_names[index],style: TextStyle(color:Colors.orange,fontFamily: "momo"));

}
