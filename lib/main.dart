import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/Alert_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/ChangeNotifierProviderDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/NestedScrollView_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/InheritedWidget_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/ShapesExample.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/animatedList_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/baseline_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/chartAnimationDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/colorsAndTheme_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/downloadDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/easingAnimationDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/fileoperationroute.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/fontAnimatDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/futureBuilder_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/gridView_md.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/homeRoute.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/jsonToModel.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/json_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/layoutdemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/maskAnimationDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/offstage_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/opacityAnimationDemo.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/pageView_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/SliverFlexibleHeaderDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/pointerMove_listener.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/refresh_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/route_args.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/socket_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/state_manage.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/table_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/ticket.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/transform_stu.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/valueAnimationDemo.dart';

import 'l10n/localization_intl.dart';
import 'localizations/demoLocalizations.dart';
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
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DemoLocalizationsDelegate(), //自定义国际化代理
        TDemoLocalizationsDelegate(),
      ],
      supportedLocales: const [
        Locale("en","US"), //语言和国家标志
        Locale("zh","CN"),
      ],
      title: 'Flutter Demo',
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
