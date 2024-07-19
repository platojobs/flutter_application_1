import 'package:flutter/material.dart';
import 'package:flutter_application_1/firstRoute.dart';
class MyDefaultTabController extends StatelessWidget {
  const MyDefaultTabController({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            primary: true,
            title: const Text('Flutter Demo Home Page'),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              )
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: TextButton(
                  onPressed: () {
                    print("object");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FirstPage(todos: List.generate(20, (subitem)=> Item(name: "$subitem + name + $subitem", title: "A description of what needs to be done for Todo + $subitem", index: subitem)))),
                        );
                  },
                  child: const Text("跳转",style: TextStyle(fontFamily: "微软雅黑",fontSize: 20,color: Colors.red,fontWeight:FontWeight.bold),)),
            ),
            const Icon(Icons.directions_transit),
            const Icon(Icons.directions_bike)
          ]),
        ),
      );
  }
}