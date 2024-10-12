import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_pprotapp/pages/homeRoute.dart';
import 'package:flutter_pprotapp/pages/widgetsRoute.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/Alert_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/BottomSheet/BottomSheet.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/ChangeNotifierProviderDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/NestedScrollView_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/InheritedWidget_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/ShapesExample.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/animatedList_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/appBar_pjDemo/BottomAppBarDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/badge/badgeDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/baseline_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/button_pjDemo/buttonDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/chartAnimationDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/colorsAndTheme_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/downloadDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/easingAnimationDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/fileoperationroute.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/fontAnimatDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/futureBuilder_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/gridView_md.dart';
import 'package:flutter_pprotapp/pages/homeRoute.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/jsonToModel.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/json_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/layoutdemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/maskAnimationDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/offstage_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/opacityAnimationDemo.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/pageView_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/SliverFlexibleHeaderDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/pointerMove_listener.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/progressIndicator/circleIndicator.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/refresh_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/route_args.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/socket_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/state_manage.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/table_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/ticket.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/transform_stu.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_pprotapp/generated/l10n.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/valueAnimationDemo.dart';


const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: S.of(context).title,
      theme: ThemeData(
        brightness: Brightness.light, //深色还是浅色
        primarySwatch: Colors.blue, //主题色样本
        primaryColor: Colors.red, //决定导航栏的颜色
        cardColor: Colors.black, //卡片的颜色
        dividerColor: Colors.green, //分割线的颜色
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.accent,
          buttonColor: Colors.blue,
        ),
        fontFamily: "Oswald",
      ),
      routes: {
        "state_manage":(context)=>const StateMutilManage(),
        "home":(context) =>  const HomeRoute(),
        "alert":(context)=> MMAletView(),
        "MMAnimatedListStudy":(context) => const MMAnimatedListStudy(),
        "RouteArgs":(context)=>  DataDetailPage(id: ModalRoute.of(context)!.settings.arguments as String),
        "RefreshS":(context)=> const RefreshS(),
        "jsonToModel":(context) => const JsonToModelStt(),
        "ShapesExample":(context)=>const ShapesExample(),
        "DownLoadButtonDemo":(context)=> const DownloadButtonDemoExample(),
        "Fontanimatdemo":(context)=> const Fontanimatdemo(),
        "EasingAnimationDemo":(context)=> const EasingAnimationDemo(),
        "MaskAnimationDemo": (context)=> const MaskAnimationDemo(),
        "ValueAnimationDemo": (context)=> const ValueAnimationDemo(),
        "ChartAnimationDemo":(context) => const ChartAnimationDemo(),
        "OpacityAnimationDemo":(context)=> const OpacityAnimationDemo(),
        "WidgetsRoute":(context) => const WidgetsRoute(),
        "Buttondemo":(context) => const Buttondemo(),
        "BottomAppBarDemo":(context)=>const BottomAppBarDemo(),
        "BadgeDemo":(context)=>const BadgeDemo(),
        "CircleIndicatorDemo": (context) => CircleIndicatorDemo(),
        "BottomSheetDemo":(context)=>BottomSheetDemo(),
      },
      initialRoute: "home",

      // home:  const HomeRoute(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text("ListView"),
      //   ),
      //   body: const HomeRoute(),
      // ),
    );
  }
}

class TDemoLocalizationsDelegate {
  const TDemoLocalizationsDelegate();
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            autocorrect: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: InputBorder.none,
                hintText: 'Enter your email',
                labelText: '邮箱',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            autocorrect: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.security),
                border: InputBorder.none,
                hintText: 'Enter your password',
                labelText: '密码',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                )),
          ),
        ],
      ),
    );
  }
}
