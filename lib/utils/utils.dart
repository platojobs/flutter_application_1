



import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Utils {

  static bool get isAndroid => Platform.isAndroid;
  static bool get isIOS => Platform.isIOS;

  /// 字符串转颜色
  ///
  /// [string] 字符串
  ///
  static Color strToColor(String? string){
    if(string == null) return Colors.white;
    final int hash = string.hashCode & 0xffff;
    final double hue = (360.0 * hash / (1 << 15)) % 360.0;
    return HSVColor.fromAHSV(1.0, hue, 0.4, 0.90).toColor();
  }

  /// 随机颜色
  ///
  static Color randomRGB() {
    return Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
  }
  static Color randomARGB() {
    Random random = Random();
    return Color.fromARGB(random.nextInt(180), random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }

  /// 生成随机串
  ///
  /// [len] 字符串长度
  ///
  static String randomString(int len) {
    String character = 'qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM';
    String left = '';
    for (var i = 0; i < len; i++) {
      left = left + character[Random().nextInt(character.length)];
    }
    return left;
  }

  /// 屏幕宽
  ///
  static double get width {
    MediaQueryData mediaQuery = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);
    return mediaQuery.size.width;
  }



}