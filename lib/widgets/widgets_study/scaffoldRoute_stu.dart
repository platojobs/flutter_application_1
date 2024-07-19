import 'package:flutter/material.dart';

class ScaffoldRoute_stu extends StatefulWidget {
  const ScaffoldRoute_stu({super.key});

  @override
  State<ScaffoldRoute_stu> createState() => _ScaffoldRoute_stuState();
}

class _ScaffoldRoute_stuState extends State<ScaffoldRoute_stu> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PProT_Ai"),
        primary: true,
        actions: <Widget>[
          IconButton(onPressed: (){
            
          }, icon: Icon(Icons.share)),
        ],
      ),
      drawer: Text("ddd"),
      bottomNavigationBar: BottomNavigationBar( // 底部导航
    items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
    BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
    ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      )
    ,
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onAdd(){
  }



}
