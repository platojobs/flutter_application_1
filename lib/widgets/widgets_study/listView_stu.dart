

import 'package:english_words/english_words.dart';
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
  final _names = ["shrinkWrap","padding","children","children_children","children_s",
    "pattern and color","There arehandful attributesvhandful attributeshandful attributes a ","handful attributeshandful attributeshandful attributeshandful attributes",
    "we can customizevhandful attributeshandful attributeshandful attributeshandful attributes","includinghandful attributeshandful attributeshandful attributes","underline"];

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
//带有分割线
class PJListBuilderWithSeparatedView extends StatelessWidget {
   PJListBuilderWithSeparatedView({super.key});
   final _names = ["shrinkWrap","padding","children","children_children","children_s",
     "pattern and color","There arehandful attributesvhandful attributeshandful attributes a ","handful attributeshandful attributeshandful attributeshandful attributes",
     "we can customizevhandful attributeshandful attributeshandful attributeshandful attributes","includinghandful attributeshandful attributeshandful attributes","underline"];


   @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: _itemBuilder,
        separatorBuilder: _separatorBuilder,
        itemCount: _names.length);
  }

  Widget _itemBuilder(BuildContext context,int index) => InkWell(
    onTap:(){
      print("$index");
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width:15),
        Image.asset("assets/test.jpeg",height: 80,width: 100 ,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              width: MediaQuery.of(context).size.width - 100-15,
              //color: Colors.grey,
              child: Text(_names[index],
                style: const TextStyle(color:Colors.black,fontSize: 15),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text("深圳市==$index",
              style: TextStyle(color:Colors.grey,fontSize: 13),
              maxLines: 1,
            ),
          ],
        ),
      ],
    ),

  );
  Widget  _separatorBuilder(BuildContext context,int index) => Container(
    color: Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
    height: 0.5,
    padding: const EdgeInsets.all(15),
  );

}

//固定高度列表
class FixedExtentList extends StatelessWidget {
   FixedExtentList({super.key});
  final _names = ["shrinkWrap","padding","children","children_children","children_s",
    "pattern and color","There arehandful attributesvhandful attributeshandful attributes a ","handful attributeshandful attributeshandful attributeshandful attributes",
    "we can customizevhandful attributeshandful attributeshandful attributeshandful attributes","includinghandful attributeshandful attributeshandful attributes","underline"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _itemBuilder,
      itemCount: _names.length,
      //prototypeItem: ListTile(title: Text("1"),),
      //itemExtent: 50,
    );
  }

  Widget _itemBuilder(BuildContext context,int index) =>  Text(_names[index],
    style: const TextStyle(
        color:Colors.black,
        fontSize: 15,
        //fontFamily: "momo"
    ),
    maxLines: 2,
    overflow: TextOverflow.ellipsis,);

}


class InfiniteListView extends StatefulWidget {
  const InfiniteListView({super.key});

  @override
  State<InfiniteListView> createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const _loading = "loading";
  final _words = <String>[_loading];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: _itemBuilder,
        separatorBuilder: _separatorBuilder,
        itemCount: _words.length);
  }

  Widget _itemBuilder(BuildContext context,int index){

    if(_words[index] == _loading){
      if(_words.length-1 <100){
        _getData();
        return  Container(
          padding:const EdgeInsets.all(15),
          alignment: Alignment.center,
          child: const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(strokeWidth: 2.0,),
          ),
        );
      }else{
        return  Container(
          alignment: Alignment.center,
          padding:const EdgeInsets.all(15),
          child:const Text(
            "没有更多数据了",
            style: TextStyle(color: Colors.grey),
          ),
        );
      }
    }
    return ListTile(title: Text(_words[index]),);
  }

  Widget  _separatorBuilder(BuildContext context,int index) => Divider(height: 0.5,);


  void _getData(){
    Future.delayed(const Duration(seconds: 2)).then(
        (element){

          setState(() {
            _words.insertAll(_words.length-1, generateWordPairs().
            take(20).map((subelement){
               return subelement.asPascalCase;
            }).toList());
          });
        }
    );

  }
}


class ListViewWithHeaderView extends StatelessWidget {
   ListViewWithHeaderView({super.key});
  var names = generateWordPairs().take(20).map((e)=> e.asPascalCase).toList();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(title: Text("我是表头"),),
        Expanded(child:
        ListView.builder(
          itemBuilder: itemBuilder,
          itemCount: names.length,
        ),
        ),
      ],
    );
  }

  Widget itemBuilder(BuildContext context,int index){
    return ListTile(title:  Text(names[index]),);
  }
}


class CustomListView extends StatelessWidget {
   CustomListView({super.key});
  final names = generateWordPairs().take(20).map((e)=> e.asPascalCase).toList();
  @override
  Widget build(BuildContext context) {
    return ListView.custom(
      childrenDelegate:

      //SliverChildListDelegate(
      //           List.generate(names.length, (index)=> ListTile(title: Text(names[index])) ),
      //         ),

      SliverChildBuilderDelegate((BuildContext context, int index) {
        return ListTile(title: Text(names[index]));
      }, childCount: names.length),
      itemExtent: 30,

    );
  }

}


class MMListViewWithController extends StatefulWidget {
  const MMListViewWithController({super.key});

  @override
  State<MMListViewWithController> createState() => _MMListViewWithControllerState();
  
}

class _MMListViewWithControllerState extends State<MMListViewWithController> {
  final names = generateWordPairs().take(80).map((e)=> e.asPascalCase).toList();
  final _contoller = ScrollController();
  bool showTotopButton = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    _contoller.addListener((){
      print(_contoller.offset);
      if(_contoller.offset < 100 &&showTotopButton){
           setState(() {
             showTotopButton = false;
           });
      }else if (_contoller.offset >=1000&& showTotopButton==false){
          setState(() {
            showTotopButton = true;
          });
      }
    });
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((BuildContext context, int index)
        => ListTile(title: Text(names[index]),),childCount: names.length
        ),
        itemExtent: 30,
        controller: _contoller,

      ),
       floatingActionButton: !showTotopButton ?null :FloatingActionButton(
         foregroundColor: Colors.white,
         backgroundColor: Colors.blue,
         shape: const CircleBorder(),
         onPressed: (){
         _contoller.animateTo(.0, duration: Duration(milliseconds: 200), curve: Curves.ease);
       },
         child: Icon(Icons.arrow_upward),
       ),
    );
  }
}



class ScrollNotificationTestRoute extends StatefulWidget {
  const ScrollNotificationTestRoute({super.key});

  @override
  State<ScrollNotificationTestRoute> createState() => _ScrollNotificationTestRouteState();
}

class _ScrollNotificationTestRouteState extends State<ScrollNotificationTestRoute> {
  String _progress = "0%";
  final names = generateWordPairs().take(80).map((e)=> e.asPascalCase).toList();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: NotificationListener<ScrollNotification>(
          onNotification:(ScrollNotification notice){
            double notice_progress = notice.metrics.pixels / notice.metrics.maxScrollExtent;
            setState(() {
              _progress = "${(notice_progress*100).toInt()}%";
              print(_progress);
            });
            print("BottomEdge:${notice.metrics.extentAfter == 0}");
            return false;

          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              ListView.builder(
                  itemBuilder: itemBuilder,
                  itemCount: names.length,
                  itemExtent: 40,
              ),
              CircleAvatar(
                radius: 30.0,
                child: Text(_progress,style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.blue,
              )
            ],
          ),

        ),
    );
  }

  Widget itemBuilder(BuildContext context,int index){
    return ListTile(title:  Text(names[index]),);
  }
}


