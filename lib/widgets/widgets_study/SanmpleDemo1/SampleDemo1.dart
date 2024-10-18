import 'package:flutter/material.dart';

import 'ButtonSection.dart';
import 'TitleSection.dart';

class SampleDemo1 extends StatefulWidget {
  const SampleDemo1({super.key});

  @override
  State<SampleDemo1> createState() => _SampleDemo1State();
}

class _SampleDemo1State extends State<SampleDemo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("梧桐山风景区"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://img0.baidu.com/it/u=3543009939,2144310597&fm=253&fmt=auto&app=138&f=JPEG?w=704&h=500",
              fit: BoxFit.cover,
            ),
            TitleSection(
              title: "梧桐山风景区",
              location: "南山大道梧桐山南地铁站870米",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonSection(
                  icon: Icons.call,
                  label: "电话",
                  color: Colors.blue,
                ),
                ButtonSection(
                  icon: Icons.near_me,
                  label: "位置",
                  color: Colors.blue,
                ),
                ButtonSection(
                  icon: Icons.share,
                  label: "分享",
                  color: Colors.blue,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                      'Bernese Alps. Situated 1,578 meters above sea level, it '
                      'is one of the larger Alpine Lakes. A gondola ride from '
                      'Kandersteg, followed by a half-hour walk through pastures '
                      'and pine forest, leads you to the lake, which warms to 20 '
                      'degrees Celsius in the summer. Activities enjoyed here '
                      'include rowing, and riding the summer toboggan run.'
                      'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                      'Bernese Alps. Situated 1,578 meters above sea level, it '
                      'is one of the larger Alpine Lakes. A gondola ride from '
                      'Kandersteg, followed by a half-hour walk through pastures '
                      'and pine forest, leads you to the lake, which warms to 20 '
                      'degrees Celsius in the summer. Activities enjoyed here '
                      'include rowing, and riding the summer toboggan run.'
                      'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                      'Bernese Alps. Situated 1,578 meters above sea level, it '
                      'is one of the larger Alpine Lakes. A gondola ride from '
                      'Kandersteg, followed by a half-hour walk through pastures '
                      'and pine forest, leads you to the lake, which warms to 20 '
                      'degrees Celsius in the summer. Activities enjoyed here '
                      'include rowing, and riding the summer toboggan run.',
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
