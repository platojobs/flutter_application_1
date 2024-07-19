import 'package:flutter/material.dart';

class MyCheckWidget extends StatefulWidget {
  const MyCheckWidget({super.key});

  @override
  State<MyCheckWidget> createState() => _MyCheckWidgetState();
}

class _MyCheckWidgetState extends State<MyCheckWidget>
    with SingleTickerProviderStateMixin {
  var isloggle = false;
  var checkBox = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Switch(
          
          activeColor: Colors.blue,
          value: isloggle, onChanged: (value){
             setState(() {
               isloggle = value;
             });
        }),

        Checkbox(
          value: checkBox,
          activeColor: Colors.green,
          onChanged: (value) {
            setState(() {
               checkBox = value!;
            });
          },
        ),
        CheckboxListTile(
          value: checkBox,
          onChanged: (value) {
            setState(() {
              checkBox = value!;
            });
          },
          title: const Text("CheckBoxListTile"),
        ),
      ],
    );
  }
}
