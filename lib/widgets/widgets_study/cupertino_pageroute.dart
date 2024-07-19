import 'package:flutter/cupertino.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/secondRoute.dart';

class CupertinoPageRouteWidget extends StatelessWidget {
  const CupertinoPageRouteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text("导航"),),
      child: Center(
          child: CupertinoButton(
        child: const Text("跳转"),
        onPressed: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (context) => const SecondPage()));
        },
      )),
    );
  }
}
