import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection(
      {super.key,
      required this.color,
      required this.icon,
      required this.label});
  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            label,
            style: TextStyle(
                color: color, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
