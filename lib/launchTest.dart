import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherButton extends StatelessWidget {
  const UrlLauncherButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        
        onPressed: (){
          final url = Uri.parse("https://github.com");
          launchUrl(url);
        },
        child: const Text('加载网页',style: TextStyle(color: Colors.red,fontSize: 24),),
      ),
    );
  }
}
