import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_pprotapp/models/serverData.dart';
import 'package:flutter_pprotapp/services/dio_networker.dart';
import 'package:flutter_pprotapp/utils/PJLoadingUtils.dart';

class DataDetailPage extends StatefulWidget {
  final String id; // 假设id是必须的参数

  const DataDetailPage({super.key,required this.id});

  @override
  _DataDetailPageState createState() => _DataDetailPageState();
}

class _DataDetailPageState extends State<DataDetailPage> {
  final Dio dio = Dio();
  var data; // 用于存储获取的数据

  @override
  void initState() {
    super.initState();
    debugPrint("==${widget.id}");
    fetchData();
  }

  // 获取数据的函数
  Future<void> fetchData() async {
    PJProgressHUD.showHud("加载中...");
    try {
      // 使用Dio获取服务器数据
      Response response = await PJDioNetWorking().get('http://v.juhe.cn/todayOnhistory/queryEvent.php');
      PJProgressHUD.hidHud();
      PJProgressHUD.showSuccessHudDelay(msg: "成功", delay: 1);
      debugPrint('获取数据: ${response.data}');
      var mapjson = jsonDecode(response.data);
      debugPrint('获取数据==: $mapjson');
      var reslut = ResultData.fromJson(mapjson);
      debugPrint('获取数据: ${reslut.reason}');
      setState(() {
        data = reslut.reason; // 更新状态的数据
      });
    } on DioException catch (e) {
      PJProgressHUD.hidHud();

      PJProgressHUD.showErrorHudDelay(e.toString(), 1);
      debugPrint('获取数据失败: ${e.error}'); // 打印错误信息
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('${ModalRoute.of(context)!.settings.arguments}'),
      ),
      body: Center(
        child: data == null ? const CircularProgressIndicator() : Text(data.toString()),
      ),
    );
  }
}
