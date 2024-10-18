import 'package:flutter/material.dart';

class AboutDialogDemo extends StatefulWidget {
  const AboutDialogDemo({super.key});

  @override
  State<AboutDialogDemo> createState() => _AboutDialogDemoState();
}

class _AboutDialogDemoState extends State<AboutDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutDialog"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show About Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const AboutDialog(
                applicationIcon: FlutterLogo(),
                applicationLegalese: 'Legalese',
                applicationName: 'Flutter App',
                applicationVersion: 'version 1.0.0',
                children: [
                  Text('This is a text created by Flutter Mapp'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
