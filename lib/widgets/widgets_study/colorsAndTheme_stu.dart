

import 'package:flutter/material.dart';
import 'dart:math';
class MMNavBar extends StatelessWidget {
  const MMNavBar({super.key,required this.title,required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return  Container(
       constraints:const  BoxConstraints(
         minWidth: double.infinity,
         minHeight: 50,
       ),
      decoration: BoxDecoration(
        color: color,
        boxShadow:const [
         BoxShadow(
            color:Colors.black26,
            offset: Offset(0, 3),
            blurRadius: 3,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
          title,
        style:  TextStyle(
          fontWeight: FontWeight.normal,
          color: color.computeLuminance() < 0.5 ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}


class MMTTBar extends StatelessWidget {
  const MMTTBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MMNavBar(title: "标题1", color: Colors.blue),
        MMNavBar(title: "标题2", color: Colors.white),
      ],
    );
  }
}


class ThemeRoute extends StatefulWidget {
  const ThemeRoute({super.key});

  @override
  State<ThemeRoute> createState() => _ThemeRouteState();
}

class _ThemeRouteState extends State<ThemeRoute> {

  var _themColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    ThemeData themedata = Theme.of(context);
    return Theme(
        data: ThemeData(
          primarySwatch: _themColor,
          iconTheme: IconThemeData(color: _themColor),
        ),
        child: Scaffold(
          appBar: AppBar(title: Text("主题"),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                  Text("颜色随主题变"),
                ],
              ),
              Theme(
                  data: themedata.copyWith(
                    iconTheme: themedata.iconTheme.copyWith(
                      color: Colors.black,
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite),
                      Icon(Icons.airport_shuttle),
                      Text("  颜色固定黑色")
                    ],

                  )
              ),

              FloatingActionButton(onPressed: (){
                 setState(() {

                   _themColor = _themColor == Colors.red ? Colors.blue : Colors.red;

                 });
              },
                backgroundColor: _themColor,
                foregroundColor: _themColor.computeLuminance() > 0.5 ? Colors.black:Colors.white,
                child: Icon(Icons.palette),

              ),


            ],
          ),
        ),
    );
  }
}
