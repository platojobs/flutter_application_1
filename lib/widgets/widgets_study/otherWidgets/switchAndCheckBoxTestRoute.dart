import 'package:flutter/material.dart';

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  const SwitchAndCheckBoxTestRoute({super.key});

  @override
  _SwitchAndCheckBoxTestRouteState createState() =>
      _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
   bool _switchSelected = true;
   bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Switch(
          activeColor: Colors.blue,
          value: _switchSelected,
          onChanged: (bool value) {
            setState(() {
              _switchSelected = value;
            });
          },
        ),
         Checkbox(
          value: _checkboxSelected,
          onChanged: (bool? value) {
            setState(() {
              _checkboxSelected = value!;
            });
          },
        ),


      ],
    );
  }
}
