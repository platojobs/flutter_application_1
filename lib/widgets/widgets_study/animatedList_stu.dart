
//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MMAnimatedList extends StatefulWidget {
  const MMAnimatedList({super.key});

  @override
  State<MMAnimatedList> createState() => _MMAnimatedListState();
}

class _MMAnimatedListState extends State<MMAnimatedList> {
  List<String> data = [];
  int counter = 5;
  //generateWordPairs().take(50).map((e)=> e.asUpperCase).toList();
  final globalKey = GlobalKey<AnimatedListState>();
  @override
  void initState() {
    // TODO: implement initState

    for(var i = 0;i < counter; i++){
       data.add("${i+1}");
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedList(
          key: globalKey,
            initialItemCount: data.length,
            itemBuilder: itemBuilder),
        builtBtn(),

      ],
    );
  }

  Widget itemBuilder(BuildContext context , int index ,Animation<double> animation){
   return FadeTransition(
      opacity: animation,
     child: builditem(context,index),
    );
  }

  Widget builditem(BuildContext context , int index) => ListTile(
    title: Text(data[index]),
    key: ValueKey(data[index]),
    trailing: IconButton(
        onPressed: ()=>onDelete(context,index),
        icon: const Icon(Icons.delete)),
  );
  Widget builtBtn(){
    return Positioned(
      bottom: 30,
      left: 0,
      right: 0,
        child: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){
            data.add("${
                ++counter}");
                globalKey.currentState!.insertItem(data.length-1);
                print("add+ $counter");
          },
        ),

    );
  }

  //删除
  void onDelete(context, index){
    
    setState(() {
      
      globalKey.currentState!.removeItem(index, (context,animation){
        var item = builditem(context,index);
        print("delete ${data[index]}");
        data.removeAt(index);
        return FadeTransition(
            opacity: CurvedAnimation(
                parent: animation,
                curve: const Interval(0.5,1.0),
            ),
           child: SizeTransition(
             sizeFactor: animation,
             axisAlignment:0.0 ,
             child: item,
           ),
        );
      });
      
      
      
    });
    
  }

}
