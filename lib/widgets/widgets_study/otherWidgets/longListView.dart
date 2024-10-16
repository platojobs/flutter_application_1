import 'package:flutter/material.dart';

class LongListViewWidget extends StatelessWidget {
  const LongListViewWidget({
    super.key,
    required this.items,
  });
  final items; //参数测试值: List.generate(100, (index) => "单元格:$index")
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      prototypeItem: ListTile(
        title: Text(
          items.first,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index],
              style: TextStyle(
                  fontSize: 15,
                  color: index % 2 == 0 ? Colors.red : Colors.black)),
          // onTap: () {
          //   debugPrint('点击了第$index行');
          // },
          onLongPress: (){
            debugPrint('长按了第$index行');
          },
        );
      },
    );
  }
}
