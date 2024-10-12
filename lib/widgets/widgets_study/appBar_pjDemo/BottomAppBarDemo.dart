import 'package:flutter/material.dart';

import 'bottomAppBar.dart';

class BottomAppBarDemo extends StatefulWidget {
  const BottomAppBarDemo({super.key});

  @override
  State<BottomAppBarDemo> createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
   bool _showFloatbt = true;
   bool _showNotch = true;
   FloatingActionButtonLocation _fablocation = FloatingActionButtonLocation.endDocked;

   void _showFloatbtHandler(bool value){
     setState(() {
       _showFloatbt = value;
     });
   }
   void __showNotchHandler(bool value){
     setState(() {
       _showNotch = value;
     });
   }

   void _onFabLocationChanged(FloatingActionButtonLocation? value) {
     setState(() {
       _fablocation = value ?? FloatingActionButtonLocation.endDocked;
     });
   }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const  Text("BottomAppBar"),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 88),
        children: [
          SwitchListTile(
              title: const Text("中间凸起按钮"),
              value: _showFloatbt,
              onChanged: _showFloatbtHandler
          ),
          SwitchListTile(
              title: const Text("凸起按钮空洞位置"),
              value: _showNotch,
              onChanged: __showNotchHandler
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Floating action button position"),
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: const Text('startDocked'),
            value: FloatingActionButtonLocation.startDocked,
            groupValue: _fablocation,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: const Text('DockedCenter'),
            value: FloatingActionButtonLocation.centerDocked,
            groupValue: _fablocation,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
             title: const Text("Dockedend"),
              value: FloatingActionButtonLocation.endDocked,
              groupValue: _fablocation,
              onChanged: _onFabLocationChanged
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: const Text('Floating - End'),
            value: FloatingActionButtonLocation.endFloat,
            groupValue: _fablocation,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: const Text('Floating - Center'),
            value: FloatingActionButtonLocation.centerFloat,
            groupValue: _fablocation,
            onChanged: _onFabLocationChanged,
          ),

        ],
      ),
      floatingActionButton: _showFloatbt? FloatingActionButton(
        onPressed: (){},
        tooltip: "+",
        child: const Text("+",style: TextStyle(fontSize: 40),),
      ):null,
      floatingActionButtonLocation: _fablocation,
      bottomNavigationBar:  DemoBottomAppBar(fabLocation: _fablocation,shape: _showNotch? const CircularNotchedRectangle():null,),

    );
  }
}

