import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final routs = {"state_manage":"状态管理", "home":"首页","alert":"弹窗","MMAnimatedListStudy":"列表删除增添学习",
    "RouteArgs":"路由传参数",
    "RefreshS":"刷新加载更多",
    "jsonToModel":"Josn模型转化",
    "ShapesExample":"剪辑器",

  };
  final dateIndicatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            var arskey = routs.keys.toList()[index];
            return Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width-60,
                          child: Text(
                            "${routs.values.toList()[index]}+${generateWordPairs().take(20).join("-")}",
                            style: const TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Oswald-Regular"),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                          )

                      ),
                    ),
                    SizedBox(
                        width: 40,
                        child: IconButton(onPressed: (){
                          Navigator.pushNamed(context, routs.keys.toList()[index],arguments: arskey=="RouteArgs"?"2w3":"");
                        }, icon: Icon(Icons.arrow_circle_right,color: Colors.grey[600],)
                        )
                    ),
                  ],
                ),
                const Divider(
                  height: 0.5,
                  color: Colors.grey,
                )
            ],
            );
          },
          itemCount: routs.length,
          itemExtent: 65,
        )
    );
  }
}
