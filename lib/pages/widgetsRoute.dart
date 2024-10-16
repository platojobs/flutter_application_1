import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';

import '../appMac/app_config.dart';
class WidgetsRoute extends StatefulWidget {
  const WidgetsRoute({super.key});

  @override
  State<WidgetsRoute> createState() => _WidgetsRouteState();
}

class _WidgetsRouteState extends State<WidgetsRoute> {
  final routs = AppConfig.widgetsRouteMap();
  final iconsLD = [
    Icons.widgets,
    Icons.radio_button_on,
    Icons.disabled_by_default,
    Icons.file_download,Icons.message,
    Icons.verified,Icons.star,
    Icons.local_activity,
    Icons.mediation,
    Icons.cloud_circle,
    Icons.face,Icons.face_2_outlined,Icons.face_retouching_natural,
    Icons.folder,Icons.folder_shared,Icons.folder_zip
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
                    child:  Icon(iconsLD[Random().nextInt(iconsLD.length)],size: 45,color: Colors.white,),
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
                        Icons.chevron_right_rounded,
                        color: Colors.green,
                        size: 40,
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
