import 'package:flutter/material.dart';

class TLinearProgressIndicator extends StatelessWidget {
  const TLinearProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: Colors.grey,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
      color: Colors.blue,
      value: .5,
      minHeight: 20,
    );
  }
}
