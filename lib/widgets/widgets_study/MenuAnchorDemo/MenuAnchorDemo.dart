import 'package:flutter/material.dart';

class MenuAnchorDemo extends StatefulWidget {
  const MenuAnchorDemo({super.key});

  @override
  State<MenuAnchorDemo> createState() => _MenuAnchorDemoState();
}

class _MenuAnchorDemoState extends State<MenuAnchorDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MenuAnchor"),
      ),
      body: Center(
        child: MenuAnchor(
          builder: _buildView,
          menuChildren: _buildMenus,
        ),
      ),
    );
  }

  Widget _buildView(_, MenuController controller, Widget? child) {
    return GestureDetector(
        onTap: controller.open,
        child: ColoredBox(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Text(
              "文件",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }

  List<Widget> get _buildMenus => [
        MenuItemButton(
          child: Text('新建'),
          onPressed: () {
            debugPrint("======新建==========");
          },
        ),
        SubmenuButton(
          child: Text("打开"),
          menuChildren: [
            MenuItemButton(
              child: Text('打开png'),
              onPressed: () {
                debugPrint("======打开png==========");
              },
            ),
            MenuItemButton(
              child: Text('打开jpg'),
              onPressed: () {
                debugPrint("======打开jpg==========");
              },
            ),
            MenuItemButton(
              child: Text('打开txt'),
              onPressed: () {
                debugPrint("======打开txt==========");
              },
            ),
          ],
        ),
      ];
}
