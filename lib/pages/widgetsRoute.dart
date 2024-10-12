import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';
class WidgetsRoute extends StatefulWidget {
  const WidgetsRoute({super.key});

  @override
  State<WidgetsRoute> createState() => _WidgetsRouteState();
}

class _WidgetsRouteState extends State<WidgetsRoute> {
  final routs = {
    "Buttondemo":"按钮组件",
    "BottomAppBarDemo":"底部appbar",
    "BadgeDemo":"角标",
    "CircleIndicatorDemo":"进度指示器",
    "BottomSheetDemo":"底部sheet",
  };
  final iconsLD = [
    Icons.widgets,Icons.radio_button_on,Icons.disabled_by_default,Icons.file_download,Icons.message,
    Icons.verified,Icons.star,Icons.local_activity,Icons.mediation
  ];

  final dateIndicatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text("组件"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            var arskey = routs.keys.toList()[index];
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.green,
                    child:  Icon(iconsLD[Random().nextInt(8)],size: 45,color: Colors.white,),
                  ),
                  title: Text(routs.values.toList()[index],style: const TextStyle(color: Colors.green),),
                  subtitle:  Text(generateWordPairs().take(20).join("-"),
                    maxLines: 2,
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, routs.keys.toList()[index],
                            arguments: arskey == "RouteArgs" ? "2w3" : "");
                      },
                      icon:const  Icon(
                        Icons.arrow_right,
                        color: Colors.green,
                      )),
                ),
                const Divider(height: 1,),
              ],
            );
          },
          itemCount: routs.length,
          itemExtent: 85,
        )
    );
  }
}
