
import 'package:flutter/material.dart';

class ScaffoldRoute_stu extends StatefulWidget {
  const ScaffoldRoute_stu({super.key});

  @override
  State<ScaffoldRoute_stu> createState() => _ScaffoldRoute_stuState();
}

class _ScaffoldRoute_stuState extends State<ScaffoldRoute_stu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("你好，PlatoJobs",style: TextStyle(color: Colors.white,fontFamily:"mono" ,fontSize: 24),),
          primary: true,
          leading :Builder(builder: (context){
            return IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, icon: const Icon(Icons.dashboard,color: Colors.white,));
          }),
          actions: <Widget>[
            IconButton(onPressed: () {
              debugPrint("share");
            }, icon: const Icon(Icons.share)),
          ],
        ),
        backgroundColor: Colors.grey,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //打洞位置
        floatingActionButton: FloatingActionButton(
             foregroundColor: Colors.white,
             backgroundColor: Colors.blue,
             shape: const CircleBorder(side:BorderSide(color:Colors.blue,width: 1) ),
             child: const Icon(Icons.add),
            onPressed: (){

            }),

        drawer: const MyCunstomDrawer(), //抽屉效果
        bottomNavigationBar: DongTabbar(), //打洞

      //   BottomNavigationBar( // 标准底部导航
      // items: const <BottomNavigationBarItem>[
      // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      // BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
      // BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
      // ],
      //     currentIndex: _selectedIndex,
      //     fixedColor: Colors.blue,
      //     onTap: _onItemTapped,
      //   ),
    );
  }

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  //
  // void _onAdd() {
  //
  // }

}


class MyCunstomDrawer extends StatefulWidget {
  const MyCunstomDrawer({super.key});

  @override
  State<MyCunstomDrawer> createState() => _MyCunstomDraweState();
}

class _MyCunstomDraweState extends State<MyCunstomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Row(
                    children: [
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ClipOval(
                          child: Image.asset("assets/avatar.jpg",
                            width: 80,
                          ),
                        ),
                      ),
                      const Text("PlatoJobs",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              Expanded(
                  child: ListView(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.add),
                        title: Text("添加账户"),
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text("设置"),
                      ),
                    ],
                  ),

              ),

            ],
          ))
    );
  }
}


//中间按钮
class DongTabbar extends StatelessWidget {
  const DongTabbar ({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape:const  CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(icon:const Icon(Icons.home),onPressed:(){
            debugPrint("home");
          },),
          const SizedBox(),
          IconButton(icon: const Icon(Icons.business),onPressed:(){
            debugPrint("business");
          },),
        ],
        //均分底部导航栏横向空间
      ),
    );
  }
}
