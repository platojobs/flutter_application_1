
import 'package:flutter/material.dart';

Future<String>mockNetWorkData()async{
  return Future.delayed(Duration(seconds: 2),()=>"网络数据规回来了");
}



class FutureStu extends StatelessWidget {
  const FutureStu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<String>(
        future: mockNetWorkData(),
        builder: (BuildContext context,AsyncSnapshot snap){
          if(snap.connectionState == ConnectionState.done){
            if(snap.hasError){
              return Text("Error：${snap.error}");
            }else{
              return Text("Data:${snap.data}");
            }
          }else{
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}



