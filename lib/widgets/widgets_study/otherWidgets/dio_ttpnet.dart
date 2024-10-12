import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioTestTTp extends StatelessWidget {
  const DioTestTTp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
          onPressed: (){
            getHttpTest().then((Response response){
              print(response.data.toString());
            });
          },
          child: Text("Dio_Bt")),
    );
  }
  Future<Response> getHttpTest() async{
    return  await Dio().get("/test?id=12&name=wendu");
  }
}
