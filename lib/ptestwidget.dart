
import 'package:flutter/material.dart';

class PTestWidget extends StatefulWidget {
  
  PTestWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PTestWidgetState();
  }
}

class PTestWidgetState extends State<PTestWidget> {
  var _favorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PTestWidget"),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        fit: StackFit.loose,
        clipBehavior: Clip.hardEdge,
        textDirection: TextDirection.rtl,
        children: [
          Image.asset("assets/images/test.jpeg"),
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: const Color.fromARGB(150, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "我和我的祖国，一刻也不能分割。",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: _favorite ? Colors.red : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _favorite = !_favorite;
                      });
                      print("点击了收藏");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
