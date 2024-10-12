

import 'package:flutter/material.dart';

class InheritedWidgetDemo extends StatefulWidget {
  const InheritedWidgetDemo({super.key});

  @override
  State<InheritedWidgetDemo> createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MMInheritedWidgetShareData(
        data: count,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TestShareData(),
            ),
            ElevatedButton(onPressed: (){
                  setState(() {
                    ++count;
                  });
            },
              child: Text("点击+"),
            )
          ],
        ),
      ),
    );
  }
}




class MMInheritedWidgetShareData extends InheritedWidget {
  final int data;
  const MMInheritedWidgetShareData({super.key, required this.data,required super.child});

  static MMInheritedWidgetShareData? of(BuildContext context){
     //context.dependOnInheritedWidgetOfExactType<MMInheritedWidgetShareData>()
    return context.getElementForInheritedWidgetOfExactType<MMInheritedWidgetShareData>()!.widget as MMInheritedWidgetShareData;
  }


  @override
  bool updateShouldNotify(covariant MMInheritedWidgetShareData oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.data != data;
  }
}


class TestShareData extends StatefulWidget {
  const TestShareData({super.key});

  @override
  State<TestShareData> createState() => _TestShareDataState();
}

class _TestShareDataState extends State<TestShareData> {
  @override
  Widget build(BuildContext context) {
    return Text(MMInheritedWidgetShareData.of(context)!.data.toString());
  }
  
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("Dependencies change");
  }
  
}
