import 'package:flutter/material.dart';

class MBottomNavigationWidget extends StatefulWidget {
  const MBottomNavigationWidget({super.key});

  @override
  State<MBottomNavigationWidget> createState() =>
      _MBottomNavigationWidgetState();
}

class _MBottomNavigationWidgetState extends State<MBottomNavigationWidget> {
  int _currentIndex = 0;
  final List <Widget> _pages = [];

  @override
  void initState() {
    _pages
      ..add(const Text("one",style: TextStyle(color: Colors.red),))
      ..add(const Text("two",style: TextStyle(color: Colors.green),))
      ..add(const Text("three",style: TextStyle(color: Colors.black),))
      ..add(const Text("four",style: TextStyle(color: Colors.blue),));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: _pages[_currentIndex],
        ),
      ),
      //_pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.redAccent,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: Colors.redAccent,
              ),
              label: "Email",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: Colors.redAccent,
              ),
              label: "Map",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                color: Colors.redAccent,
              ),
              label: "Dashboard",
            ),
          ],
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
              print(_pages[index]);
            });
          }),
    );
  }
}
