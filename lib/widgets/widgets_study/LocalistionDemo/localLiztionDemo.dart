import 'package:flutter/material.dart';
import 'package:flutter_pprotapp/generated/l10n.dart';

class LocalliztionDemo extends StatefulWidget {
  const LocalliztionDemo({super.key});

  @override
  State<LocalliztionDemo> createState() => _LocalliztionDemoState();
}

class _LocalliztionDemoState extends State<LocalliztionDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(

            children: [

              Text(S.of(context).title),
              FilledButton.icon(onPressed: (){
                setState(() {
                  S.load(Locale("zh"));//切换中文
                });
              }, label:Text(S.of(context).username)
              ),
              FilledButton.icon(onPressed: (){
                setState(() {
                  S.load(Locale("en"));//切换英文
                });
              }, label:Text(S.of(context).password)
              ),

            ],
          ),
        ),
      ),//国际化文本,
    );
  }
}
