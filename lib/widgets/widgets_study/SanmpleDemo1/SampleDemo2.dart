import 'package:flutter/material.dart';
//import 'package:flutter_pprotapp/widgets/widgets_study/button_pjDemo/PJButtonBackGroundColor.dart';

import '../button_pjDemo/singleChoiceSegment.dart';

class SampleDemo2 extends StatefulWidget {
  const SampleDemo2({super.key});

  @override
  State<SampleDemo2> createState() => _SampleDemo2State();
}

class _SampleDemo2State extends State<SampleDemo2> {

  final ststelists = ["全部","跟进","已跟进","已完成"];
  var state = "全部";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SampleDemo2"),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuAnchor(
                      builder: _buildView,
                      menuChildren: ststelists.map((str)=> MenuItemButton(
                        child: Text(str),
                        onPressed: (){
                          setState(() {
                            state = str;
                          });
                        },
                      )
                      ).toList(),
                      child: const Text("全部状态")
                  ),
                  SingleChoiceSegment(
                    titles: const {"全部", "今天", "近一周"},
                    defaultSelect: '全部',
                    onSelectionChanged: (value) {
                      debugPrint("选择了:${value}");
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
              width: MediaQuery.of(context).size.width,
              child: ColoredBox(color: Colors.grey),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [Text("跟进",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),),],
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Text("来源:"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Text("时间:"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Text("联系人:"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
              width: MediaQuery.of(context).size.width,
              child: ColoredBox(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      child: Image.asset("assets/avatar.jpg"),
                    ),
                  ),
                  Text("昵称"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
              width: MediaQuery.of(context).size.width,
              child: ColoredBox(color: Colors.grey),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("信息详情"),
                )
              ],
            ),
            Divider(
              height: 0,
              color: Colors.grey,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(75, 80, 75, 25),
                  child: Text("信息详情信息详情信息详情信息"
                      "详情信息详情信息详情信息详情"),
                ),
                Container(
                  height: 40,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      debugPrint("hello===");
                    },
                    child: Text(
                      "查看跟进",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildView(_, MenuController controller, Widget? child) {
    return GestureDetector(
        onTap: controller.open,
        child: ColoredBox(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Text(
              state,
              style: TextStyle(color: state=="全部"?Colors.black:Colors.blue),
            ),
          ),
        ));
  }

}
