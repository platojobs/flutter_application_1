


import 'package:flutter/material.dart';

class ColorUtil{

  static Color hexColor(int hex ,{double alpha =1}){
     if (alpha<0){
       alpha = 0;
     }else if(alpha>1){
       alpha = 1;
     }
     return Color.fromRGBO((hex&0xFF0000 >> 16), (hex&0x00FF00) >> 8, (hex&0x0000FF) >> 0, alpha);
  }

  static Color hexColorString(String hexColor){
     return Color(colorFromHexStringToInt(hexColor));
  }

  static int colorFromHexStringToInt(String hexColor){
    if (hexColor.startsWith("#")){
      hexColor = hexColor.toUpperCase().replaceAll("#", "");
    }else{
      hexColor = hexColor.toUpperCase();
    }
    if(hexColor.length == 6){
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor,radix: 16);
   }


}