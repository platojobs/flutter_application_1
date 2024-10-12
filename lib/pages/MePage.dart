import 'package:flutter/material.dart';
import 'package:flutter_pprotapp/utils/ColorUtil.dart';
import 'package:flutter_pprotapp/utils/utils.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/button_pjDemo/PJButtonBackGroundColor.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/otherWidgets/gridView_md.dart';

class Mepage extends StatefulWidget {
  const Mepage({super.key});

  @override
  State<Mepage> createState() => _MepageState();
}

class _MepageState extends State<Mepage> {

  final _iconsName = ["assets/anlimg.png","assets/anlimg.png","assets/anlimg.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("我的"),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(25),
        itemBuilder: (context, index) {
          if (index == 0) {
            return SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.green)
                      ),
                      child: IconButton(
                        color: Colors.blue,
                        onPressed: () {},
                        icon: const FlutterLogo(size: 55,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("FlutterMe2024"),
                          Row(
                            children: [const Text("实名认证"),
                              Container(
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue
                                ),
                                  child: const Text("VIP",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white ),
                                  )
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          } else if (index == 1) {
            return Container(
              color: Colors.white,
              height: 110*MediaQuery.of(context).size.height/667,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: _itemBuilder),
            );
          } else if (index == 2) {
            return SizedBox(
              height: 60*MediaQuery.of(context).size.height/667,
              width: MediaQuery.of(context).size.width,
              child: Container(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50*MediaQuery.of(context).size.height/667,
                        width: (MediaQuery.of(context).size.width-60)*0.5,
                        decoration: BoxDecoration(
                          color:Colors.red,
                          border: Border.all(width: 2,color: Colors.green)
                        ),
                        child: const Text("广告1",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50*MediaQuery.of(context).size.height/667,
                        width: (MediaQuery.of(context).size.width-60)*0.5,
                        decoration: const BoxDecoration(
                            color:Colors.green,
                          border: Border.fromBorderSide(BorderSide(width: 2,style: BorderStyle.solid,color: Colors.blue))
                        ),
                        child: Text("广告2",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    //  FilledButton.icon(onPressed: (){}, label: Image.asset("assets/mtool.png"),),
                    //  FilledButton.icon(onPressed: (){}, label: Image.asset("assets/lyvip.png"),),
                  ],
                ),
              ),
            );
          } else if (index == 3) {
            return SizedBox(
              height: 100*MediaQuery.of(context).size.height/667,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "XX中心",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: PJButtonBackGroundColor(
                                  context, ColorUtil.hexColorString("#F3F6F8")),
                              minimumSize: PJButtonStyleSize(
                                  context, const Size(46, 17)),
                            ),
                            child: const Text(
                              "基础版",
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      _itemBuilder(context, 0)!,
                      _itemBuilder(context, 1)!,
                      _itemBuilder(context, 2)!,
                      _itemBuilder(context, 3)!,
                    ],
                  ),
                ],
              ),
            );
          }else if(index==4){
            return SizedBox(
              height: 100*MediaQuery.of(context).size.height/667,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "我的XX",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: PJButtonBackGroundColor(
                                  context, ColorUtil.hexColorString("#F3F6F8")),
                              minimumSize: PJButtonStyleSize(
                                  context, const Size(46, 17)),
                            ),
                            child: const Text(
                              "基础版",
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _itemBuilder(context, 0)!,
                      _itemBuilder(context, 1)!,
                    ],
                  ),
                ],
              ),
            );
          }else if(index==5){
            return SizedBox(
              height: 100*MediaQuery.of(context).size.height/667,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "工具PPt",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: PJButtonBackGroundColor(
                                  context, ColorUtil.hexColorString("#F3F6F8")),
                              minimumSize: PJButtonStyleSize(
                                  context, const Size(46, 17)),
                            ),
                            child: const Text(
                              "基础版",
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                  OutlinedButton(onPressed: (){},
                    style: ButtonStyle(
                      fixedSize: PJButtonStyleSize(context, Size(MediaQuery.of(context).size.width-50,40))
                    ),
                      child: const Text("进入PPt",style: TextStyle(color: Colors.black),),
                  )
                ],
              ),
            );
          }else if (index == 6) {
            return SizedBox(
              height: 100*MediaQuery.of(context).size.height/667,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "帮助中心",
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      _itemBuilder(context, 0)!,
                      _itemBuilder(context, 1)!,
                      _itemBuilder(context, 2)!,
                      _itemBuilder(context, 3)!,
                    ],
                  ),
                ],
              ),
            );
          }
        },
        itemCount: 7,
      ),
    );
  }

  Widget? _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/anlimg.png",
            height: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("浏览足迹"),
        ],
      ),
    );
  }
}
