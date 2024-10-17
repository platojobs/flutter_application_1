
import 'package:flutter/material.dart';

import 'package:flutter_pprotapp/pages/homeRoute.dart';
import 'package:flutter_pprotapp/pages/widgetsRoute.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/CardDemo/CardDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/CarouselViewDemo/CarouselSlider.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/CarouselViewDemo/CarouselViewDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/CheckboxDemo/CheckboxDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/LocalistionDemo/localLiztionDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/Alert_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/BottomSheet/BottomSheet.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/ShapesExample.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/animatedList_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/appBar_pjDemo/BottomAppBarDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/badge/badgeDemo.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/button_pjDemo/buttonDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/chartAnimationDemo.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/downloadDemo.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/easingAnimationDemo.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/fontAnimatDemo.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/jsonToModel.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/maskAnimationDemo.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/opacityAnimationDemo.dart';


import 'package:flutter_pprotapp/widgets/widgets_study/progressIndicator/circleIndicator.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/refresh_stu.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/route_args.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/valueAnimationDemo.dart';

import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/state_manage.dart';

import '../widgets/widgets_study/CheckboxDemo/CheckboxListTileDemo.dart';
import '../widgets/widgets_study/CheckboxDemo/CunstomRadioListTile.dart';
import '../widgets/widgets_study/CheckboxDemo/RadioListTile.dart';
import '../widgets/widgets_study/CheckboxDemo/SwitchListTileDemo.dart';
import '../widgets/widgets_study/ChipDemo/ChipDemo.dart';
import '../widgets/widgets_study/ChipDemo/FilterChipDemo.dart';
import '../widgets/widgets_study/ChipDemo/WrapDemo.dart';

class AppConfig{

 //全局
  static Map<String,WidgetBuilder> routsMap(BuildContext context){

    return {
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
      "CircleIndicatorDemo": (context) =>const CircleIndicatorDemo(),
      "BottomSheetDemo":(context)=>const BottomSheetDemo(),
      "LocalliztionDemo":(context)=> const LocalliztionDemo(),
      "Carddemo":(context)=>const Carddemo(),
      "CarouselSliderDemo":(context)=>const CarouselSliderDemo(),
      "CarouselViewDemo":(context0)=>const CarouselViewDemo(),
      "CheckboxDemo":(context) => const CheckboxDemo(),
      "CheckboxListTileDemo":(context) =>const CheckboxListTileDemo(),
      "RadioListTileDemo":(context) => const RadioListTileDemo(),
      "LabeledRadioExample":(context)=> const LabeledRadioExample(),
      "SwitchListTileDemo":(context)=> SwitchListTileDemo(),
      "ChipDemo":(context)=> ChipDemo(),
      "FilterChipDemo":(context)=> FilterChipDemo(),
      "WrapDemo":(context)=>WrapDemo(),
    };
  }


  //组件篇
  static Map<String,String> widgetsRouteMap(){
    return {
      "Buttondemo":"按钮组件",
      "BottomAppBarDemo":"底部appbar",
      "BadgeDemo":"角标",
      "CircleIndicatorDemo":"进度指示器",
      "BottomSheetDemo":"底部sheet",
      "Carddemo":"Card",
      "CarouselViewDemo":"Carousel",
      "CarouselSliderDemo":"轮播",
      "CheckboxDemo":"Checkbox",
      "CheckboxListTileDemo":"CheckboxListTile",
      "RadioListTileDemo":"RadioListTileDemo",
      "LabeledRadioExample":"自定义的单选按钮项",
      "SwitchListTileDemo":"开关按钮",
      "ChipDemo":"ChipDemo",
      "FilterChipDemo":"FilterChipDemo",
      "WrapDemo":"WrapDemo"
    };
  }


}

