
import 'package:flutter/material.dart';

class PJButtonBackGroundColor implements WidgetStateProperty<Color?>{

  PJButtonBackGroundColor(this.context,this.pjColor );

  final BuildContext context;
  final Color? pjColor;

  @override
  Color? resolve(Set<WidgetState> states) {
    // TODO: implement resolve
     return pjColor ?? Colors.white;
  }

}

class PJButtonStyleSize implements WidgetStateProperty<Size?>{

  PJButtonStyleSize(this.context,this.pjSize );

  final BuildContext context;
  final Size? pjSize;

  @override
  Size? resolve(Set<WidgetState> states) {
    // TODO: implement resolve
    return pjSize ?? const Size(100, 20);
  }



}