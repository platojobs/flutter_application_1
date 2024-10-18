import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

import '../appMac/app_config.dart';
import 'dart:math';
class AllWidgetsDemo extends StatefulWidget {
  const AllWidgetsDemo({super.key});

  @override
  State<AllWidgetsDemo> createState() => _AllWidgetsDemoState();
}

class _AllWidgetsDemoState extends State<AllWidgetsDemo> {

  final allWidgetsMap = AppConfig.allwidgetsRouteMap();
  final weatherIcons = [ WeatherIcons.sunrise,WeatherIcons.sunset,WeatherIcons.rain,WeatherIcons.cloud,
    WeatherIcons.alien,WeatherIcons.barometer,WeatherIcons.celsius,WeatherIcons.cloud_down,WeatherIcons.cloud_refresh,


  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Card(
            child: Text("Header0"),
          ),
        ),
        SliverList.builder(
          itemCount: allWidgetsMap.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      // border: Border.all(width: 1,style: BorderStyle.solid),
                    ),
                    child: Icon(
                      weatherIcons[Random().nextInt(weatherIcons.length)],
                      color: Colors.white,
                      size: 55,
                    ),
                  ),
                  title: Text(
                    allWidgetsMap.values.toList()[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(allWidgetsMap.keys.toList()[index]),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                  onTap: (){
                    Navigator.pushNamed(
                        context, allWidgetsMap.keys.toList()[index]);
                  },
                ),
                Divider(
                  height: 0.5,
                  indent: 10,
                  endIndent: 10,
                ),
              ],
            );
          },
        ),
        const SliverToBoxAdapter(
          child: Card(
            child: Text("Footer0"),
          ),
        )
      ],
    );
  }

  //底部弹出
  void _builder(){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: 180,
        padding: EdgeInsets.all(15),
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.import_contacts_sharp)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person)),

          ],
        ),
      );
    },
      useSafeArea: true,
    );
  }



}


