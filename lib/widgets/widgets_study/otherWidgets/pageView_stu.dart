

import 'package:flutter/material.dart';

import 'package:flutter_pprotapp/utils/keepAliveWrapper.dart';
class SubPageView extends StatefulWidget {
  SubPageView({super.key,required this.name});
  final name ;
  @override
  State<SubPageView> createState() => _SubPageViewState();
}

class _SubPageViewState extends State<SubPageView> with AutomaticKeepAliveClientMixin{

  @override
  void initState() {
    // TODO: implement initState
    debugPrint(widget.name);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    super.build(context); //调用父类，标记KeepAlive
     return Center(
      child: ListTile(
        title: Text("${widget.name}页码"),
        textColor: Colors.black,
        trailing:const  Icon(Icons.circle_notifications),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true; //是否需要缓存


}

class MMPageView extends StatefulWidget {
  const MMPageView({super.key});

  @override
  State<MMPageView> createState() => _MMPageViewState();
}

class _MMPageViewState extends State<MMPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: List.generate(5, (e)=>SubPageView(name: "HHH= $e")),
      //allowImplicitScrolling: true,
    );
  }
}


//应用缓存rapper
class MMKeppRapperViewTt extends StatelessWidget {
   const MMKeppRapperViewTt({super.key ,this.name});
  final name;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text("$name页码"),
        textColor: Colors.black,
        trailing:const  Icon(Icons.circle_notifications),
      ),
    );
  }
}

class MMPageKeepRapperView extends StatelessWidget {
  const MMPageKeepRapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: List.generate(5, (e){
        return KeepAliveWrapper(
            keepAlive: true,
            child: SubPageView(name: "HHH= $e"),);
    }),
      //allowImplicitScrolling: true,
    );
  }
}



