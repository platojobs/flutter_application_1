import 'package:flutter/material.dart';

class AboutlisttileDemo extends StatefulWidget {
  const AboutlisttileDemo({super.key});

  @override
  State<AboutlisttileDemo> createState() => _AboutlisttileDemoState();
}

class _AboutlisttileDemoState extends State<AboutlisttileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutDialog"),
      ),
      body: const Center(
        child: AboutListTile(
          icon: Icon(Icons.help),
          applicationIcon: FlutterLogo(),
          applicationLegalese: 'Legalese',
          applicationName: 'Flutter App',
          applicationVersion: 'version 1.0.0',
          aboutBoxChildren: [
            Text('This is a text created by Flutter Mapp'),
          ],
        ),
      ),
    );
  }
}
