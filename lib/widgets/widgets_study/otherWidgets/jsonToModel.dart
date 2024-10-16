

import 'package:flutter/material.dart';
import 'package:flutter_pprotapp/models/expressFromId.dart';

class JsonToModelStt extends StatefulWidget {
  const JsonToModelStt({super.key});

  @override
  State<JsonToModelStt> createState() => _JsonToModelSttState();
}

class _JsonToModelSttState extends State<JsonToModelStt> {
  ExpressFromId? user;
  final sjson =
      {
    "showapi_res_error": "",
    "showapi_res_code": 0,
    "showapi_res_id": "60d976830de376f1515835bf",
    "showapi_res_body": {
      "ret_code": 0,
      "data": [
        {
          "imgUrl": "http://static.showapi.com/app2/img/expImg/zto.jpg",
          "phone": "95311",
          "com": "zhongtong",
          "com_name": "中通快递",
          "url": "http://www.zto.cn"
        }
      ],
      "msg": "操作成功!"
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JsonToModel"),
      ),
      body: Center(
        child: OutlinedButton(onPressed: (){

         setState(() {

           user = ExpressFromId.fromJson(sjson);
           debugPrint("$user");
         });


        }, child: Text(null==user?"JsonToModel":"${user?.showapiResBody?.data?[0].comName}"),
      )
      ),
    );
  }
}
