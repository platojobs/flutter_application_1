import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
class HomeRoute extends StatelessWidget {
  HomeRoute({super.key});
  final routs = {"state_manage":"状态管理", "home":"首页","alert":"弹窗","MMAnimatedListStudy":"列表删除增添学习"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
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
                          Navigator.pushNamed(context, routs.keys.toList()[index]);
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
