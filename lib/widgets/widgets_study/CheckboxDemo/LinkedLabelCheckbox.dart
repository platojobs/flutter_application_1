import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class LinkedLabelCheckbox extends StatelessWidget {
  const LinkedLabelCheckbox({super.key, required this.label, required this.padding, required this.value, required this.onChanged});
  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding,
            child: Row(
        children: [
          Expanded(child:
            RichText(
              text: TextSpan(
                text: label,
                style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()..onTap =(){
                  debugPrint("Label has been tapped.");
                },
              ),
            ),
        ),
          Checkbox(value: value, onChanged: (value){
              onChanged(value!);
          }),

      ],
    ),
    );
  }
}
