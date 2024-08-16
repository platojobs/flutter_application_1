import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Fileoperationroute extends StatefulWidget {
  const Fileoperationroute({super.key});

  @override
  State<Fileoperationroute> createState() => _FileoperationrouteState();
}

class _FileoperationrouteState extends State<Fileoperationroute> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _readCounter().then((int value){
      setState(() {
        _counter = value;
      });
    });

  }


  Future<File>_getLocalFile()async{
    //获取应用目录
    String dir = (await getApplicationDocumentsDirectory()).path;
        return File("$dir/counter.tex");
  }

  //读取counter
  Future<int>_readCounter()async{
    try{
      File file = await _getLocalFile();
      String cotents = await file.readAsString();
      return int.parse(cotents);

    }on FileSystemException{
      return 0;
    }
  }
  
  void _increments()async{
    setState(() {
      _counter++;
    });
    await(await _getLocalFile()).writeAsString("$_counter");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("点击多少次=$_counter"),
          FloatingActionButton(
              tooltip: "Add++",
              onPressed: _increments,
              child: const Icon(Icons.add)
   ),
        ],
      )
      
    );
  }
}
