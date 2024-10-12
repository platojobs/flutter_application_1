
import 'package:flutter/material.dart';

//下载进度和速率
class DownLoadWT extends StatefulWidget {
  const DownLoadWT({super.key, required this.downloadProgress, required this.downloadSpeed});
  final double downloadProgress; //进度
  final double downloadSpeed; //速度
  @override
  State<DownLoadWT> createState() => _DownLoadWTState();
}

class _DownLoadWTState extends State<DownLoadWT> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              value: widget.downloadProgress,
              minHeight: 20,
              backgroundColor: const Color(0xFF7E7F88).withOpacity(0.15),
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(15)) ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("更新进度${widget.downloadProgress*100}%"),
                Text("${widget.downloadSpeed}kb/s"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
