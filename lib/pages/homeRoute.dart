import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_pprotapp/pages/InfoPage.dart';
import 'package:flutter_pprotapp/pages/MePage.dart';
import 'package:flutter_pprotapp/pages/MessagePage.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/button_pjDemo/PJButtonBackGroundColor.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'dart:math';
class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final routs = {
    "WidgetsRoute": "组件篇",
    "LocalliztionDemo":"国际化",
    "state_manage": "状态管理",
    "home": "首页",
    "alert": "弹窗",
    "MMAnimatedListStudy": "列表删除增添学习",
    "RouteArgs": "路由传参数",
    "RefreshS": "刷新加载更多",
    "jsonToModel": "Json模型转化",
    "ShapesExample": "剪辑器",
    "DownLoadButtonDemo": "下载列表",
    "Fontanimatdemo": "字体放大动画",
    "EasingAnimationDemo": "缓动动画",
    "MaskAnimationDemo": "遮罩动画",
    "ValueAnimationDemo": "数字倒计时动画",
    "ChartAnimationDemo": "图表动画",
    "OpacityAnimationDemo": "淡入淡出动画",
  };
  final iconsLD = [
    Icons.import_contacts,Icons.ac_unit,Icons.add_alarm,Icons.bookmark_add,Icons.message,
    Icons.media_bluetooth_off_outlined,Icons.album,Icons.near_me_sharp,Icons.mediation,
    Icons.assessment,Icons.assistant_photo,Icons.cloud_done,
    Icons.contact_mail,Icons.contacts,Icons.view_agenda,Icons.web,Icons.work
  ];


  final dateIndicatorKey = GlobalKey();
  final _controller = PageController(initialPage: 0);
  int _currentIndex = 0;
  Future<void> _showLoading(String message) async {
    EasyLoading.show(status: message);
    await Future.delayed(const Duration(seconds: 1));
    EasyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 13,
          unselectedFontSize: 13,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(color: Colors.green),
          unselectedLabelStyle: const  TextStyle(color: Colors.black),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              activeIcon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: "首页",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.inbox,color: Colors.black),
                activeIcon: Icon(
                  Icons.inbox,
                  color: Colors.green,
                ),
                label: "资讯"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message,color: Colors.black),
                activeIcon: Icon(
                  Icons.message,
                  color: Colors.green,
                ),
                label: "消息"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,color: Colors.black),
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                label: "我的"),
          ],
          onTap: (index) {
            _currentIndex = index;
            setState(() {
              _controller.jumpToPage(index);
            });
          },
        ),
        body: PageView(
         // physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          children: [
            _bulderHomePage(context),
            const InfoPage(),
            const MessagePage(),
            const Mepage(),
          ],
        ));
  }

  Widget _bulderHomePage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:FilledButton.tonalIcon(
          onPressed: (){

          },
          style: ButtonStyle(
              backgroundColor: PJButtonBackGroundColor(context, Colors.white)
          ),
          label: const Text("请输入搜索内容",style: TextStyle(color: Colors.black),),
          icon: IconButton(onPressed: (){}, icon: const Icon(Icons.search ,color: Colors.black,)),
        ),
        //const Text("首页",style: TextStyle(fontSize: 16,color: Colors.white),),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.location_on,
              color: Colors.white,
            )),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add,color: Colors.white,)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person,color: Colors.white,)),
        ],
      ),
      body: LiquidPullToRefresh(
        color: Colors.green[500],
        backgroundColor: Colors.white,
        onRefresh: () {
          return _showLoading("加载中...");
        },
        child: ListView.builder(
          itemBuilder: (context, index) {
            var arskey = routs.keys.toList()[index];
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.green,
                    child:  Icon(iconsLD[Random().nextInt(iconsLD.length)],size: 45,color: Colors.white,),
                  ),
                  title: Text(routs.values.toList()[index],style: const TextStyle(color: Colors.green),),
                  subtitle:  Text(generateWordPairs().take(20).join("-"),
                    maxLines: 2,
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, routs.keys.toList()[index],
                            arguments: arskey == "RouteArgs" ? "2w3" : "");
                      },
                      icon:const  Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.green,
                        size: 20,
                      )),
                ),
                const Divider(height: 1,),
              ],
            );
          },
          itemCount: routs.length,
          itemExtent: 85,
        ),
      ),
    );
  }

}
