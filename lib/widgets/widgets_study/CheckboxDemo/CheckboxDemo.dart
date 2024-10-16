
import 'package:flutter/material.dart';



class CheckboxDemo extends StatefulWidget {
  const CheckboxDemo({super.key});

  @override
  State<CheckboxDemo> createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  var ischeck1 = false;
  var ischeck2 = false;
  var ischeck3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Column(
        children: [
          Checkbox(
            activeColor: Colors.blue,
            checkColor: Colors.white,
            // fillColor: WidgetStateProperty. resolveWith<Color>((Set<WidgetState> states) {
            //   if (states. contains(WidgetState. disabled)) {
            //     return Colors. orange. withOpacity(.32);
            //   }
            //   return Colors. orange;
            // }),
            value: ischeck1,
            onChanged: (value){
              setState(() {
                ischeck1 = value!;
              });
            },
          ),
          Checkbox(
            activeColor: Colors.blue,
            checkColor: Colors.white,
            // fillColor: WidgetStateProperty. resolveWith<Color>((Set<WidgetState> states) {
            //   if (states. contains(WidgetState. disabled)) {
            //     return Colors. orange. withOpacity(.32);
            //   }
            //   return Colors. orange;
            // }),
            value: ischeck2,
            onChanged: (value){
              setState(() {
                ischeck2 = value!;
              });
            },
          ),
          Checkbox(
            activeColor: Colors.blue,
            checkColor: Colors.white,
            // fillColor: WidgetStateProperty. resolveWith<Color>((Set<WidgetState> states) {
            //   if (states. contains(WidgetState. disabled)) {
            //     return Colors. orange. withOpacity(.32);
            //   }
            //   return Colors. orange;
            // }),
            value: ischeck3,
            onChanged: (value){
              setState(() {
                ischeck3 = value!;
              });
            },
          ),
        ],
      ),
    );
  }

}
