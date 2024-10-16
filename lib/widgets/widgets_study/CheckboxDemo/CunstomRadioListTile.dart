
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class LinkedLabelRadio extends StatelessWidget {
  const LinkedLabelRadio({
    super.key,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: <Widget>[
          Radio<bool>(
            groupValue: groupValue,
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue!);
            },
          ),
          RichText(
            text: TextSpan(
              text: label,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  debugPrint('Label has been tapped.');
                },
            ),
          ),
        ],
      ),
    );
  }
}

class LabeledRadioExample extends StatefulWidget {
  const LabeledRadioExample({super.key});

  @override
  State<LabeledRadioExample> createState() => _LabeledRadioExampleState();
}

class _LabeledRadioExampleState extends State<LabeledRadioExample> {
  bool _isRadioSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LabeledRadioExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LinkedLabelRadio(
              label: 'First tappable label text',
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              value: true,
              groupValue: _isRadioSelected,
              onChanged: (bool newValue) {
                setState(() {
                  _isRadioSelected = newValue;
                });
              },
            ),
            LinkedLabelRadio(
              label: 'Second tappable label text',
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              value: false,
              groupValue: _isRadioSelected,
              onChanged: (bool newValue) {
                setState(() {
                  _isRadioSelected = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
