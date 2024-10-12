import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State<BottomSheetDemo> createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Sheet"),),
      body: Builder(
        builder: (context) {
          return Center(
            child: TextButton(onPressed: (){
              Scaffold.of(context).showBottomSheet(_builder);
            }, child: const Text("弹出")),
          );
        }
      ),
    );
  }


  Widget _builder(BuildContext context) => Container(
  height: 200,
  width: MediaQuery.of(context).size.width,
  color: Colors.blue,
  child: TextButton(
  onPressed: (){
  Navigator.pop(context);
  },
  child: const Text("返回",style: TextStyle(fontSize: 40),)
  ),
  );



}
