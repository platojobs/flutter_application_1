import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:io';
class GridViewMd extends StatelessWidget {
  const GridViewMd({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 24,
      mainAxisSpacing: 24,
      padding: const EdgeInsets.all(40),
      scrollDirection: Axis.horizontal,
      children: [
        _create(0),
        _create(1),
        _create(2),
        _create(3),
        _create(4),
        _create(5),
        _create(6),
        _create(7),
        _create(8),
        _create(9)
      ],
    );
  }

  Widget _create(int index) {
    return Container(
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 90, curve: Curves.linear,),
              Text("Flutter--$index")
            ],
          ),
          Expanded(
            child: Text(
              "$index,标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题"
                  "标题标题标题标题标题v标题标题标题标题标题标题标题标题标题标题标题标题标题标题",
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          FloatingActionButton(onPressed:()=>httpclientRequest(),
            child: const Text("Http"),)
        ],
      ),
    );
  }

  void httpclientRequest()async{
      try{
        var httpClient = HttpClient();

        var request = await httpClient.getUrl(Uri.parse("https://www.baidu.com"));
        request.headers.add(
            "user-agent",
            "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
        HttpClientResponse response = await request.close();
        var str = await response.transform(utf8.decoder).join();
        debugPrint("${response.headers}");
        debugPrint(str);
      }catch(e){
        debugPrint("$e");
      }finally{
        debugPrint("完成");
      }

  }
}