import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final routs = generateWordPairs().take(14).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("消息"),
      ),
      body: LiquidPullToRefresh(
        color: Colors.green[500],
        backgroundColor: Colors.white,
        onRefresh: () {
          return _showLoading("加载中...");
        },
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.green,
                    child: Image.asset(
                      "assets/headerImage.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text(
                    "${routs[index].first.toUpperCase()}*${routs[index].second.toUpperCase()}",
                    style: const TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                  subtitle: Text(
                    generateWordPairs().take(50).join("-"),
                    style: const TextStyle(color: Colors.black87),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "OpacityAnimationDemo",
                            arguments: "2w3");
                      },
                      icon: const Icon(
                        Icons.arrow_circle_right,
                        color: Colors.green,
                      )),
                ),
                const Divider(
                  height: 1,
                ),
              ],
            );
          },
          itemCount: routs.length,
          itemExtent: 85,
        ),
      ),
    );
  }

  Future<void> _showLoading(String message) async {
    EasyLoading.show(status: message);
    await Future.delayed(const Duration(seconds: 1));
    EasyLoading.dismiss();
  }
}
