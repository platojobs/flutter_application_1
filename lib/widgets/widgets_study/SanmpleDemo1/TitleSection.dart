import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.title, required this.location});
  final String location;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                location,
                style: TextStyle(fontSize: 14),
              ),
            ],
          )),
          Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
          Text("324"),
        ],
      ),
    );
  }
}
